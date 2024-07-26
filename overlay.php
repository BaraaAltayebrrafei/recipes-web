<style>
    .overlay {
        z-index: 10;
        height: 100vh;
        background-color: #eee;
        background-repeat: no-repeat;
        position: absolute;
    }

    .overlay .title {
        text-align: center;
        font-size: 50px;
        color: #00026b;
        font-family: "Century Gothic", sans-serif;
    }

    .overlay .logo {
        margin-left: 2rem;
        width: 450px;
        height: 400px;
        border-radius: .5rem;
    }

    .overlay .prg {
        padding: 2.5rem;
        font-size: 1.8rem;
        color: #00026b;
        font-family: "Century Gothic", sans-serif;
        text-align: justify;
    }

    .overlay .btn {
        margin-top: 1rem;
        display: inline-block;
        padding: .8rem 3rem;
        font-size: 1.7rem;
        border-radius: .5rem;
        border: 2px solid #fa795275;
        color: #00026b;
        cursor: pointer;
        background: #fa795275;
        box-shadow: 0 8px #fa7952d7;
        font-family: "Century Gothic", sans-serif;
    }

    .overlay .btn:active {
        box-shadow: none;
        transform: translateY(8px);
    }
</style>
<div class="overlay slds-text-align_center">
    <div class='title'> Good Food...Good Mood</div>
    <div class="slds-grid">
        <img src="./img/logo.jpeg" alt="logo" class="logo">
        <div class="prg">
            Overall, homemade foods are fresh, healthier, and nutritious than that food served in the restaurants. We
            can afford hygienic food at a reasonable price and have more time to spend with family members at home as
            compared to restaurants. Therefore, to maintain a healthy life and relation with family we always prefer
            fresh food made at home.
        </div>
    </div>
    <button class="btn" onclick="overLayUp();">Continue</button>
</div>
<script>
    function overLayUp() {
        let lay = 0;
        let body = document.body,
            html = document.documentElement;
        let height = Math.max(body.scrollHeight, body.offsetHeight,
            html.clientHeight, html.scrollHeight, html.offsetHeight);
        let interv = setInterval(() => {
            lay++;
            document.querySelector('.overlay').style.top = -lay + 'px';
            if (lay > height) {
                document.querySelectorAll('.toggle-first').forEach(it => {
                    it.classList.remove('slds-hide');
                    it.classList.remove('slds-hidden');
                });
                fetch('./openOverlay.php');
                clearInterval(interv);
            }
        }, 3);
    }
</script>