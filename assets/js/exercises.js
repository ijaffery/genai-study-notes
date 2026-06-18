// Interactive quiz — click option to reveal correct/incorrect
document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('.quiz').forEach(quiz => {
    quiz.querySelectorAll('.opt').forEach(opt => {
      opt.addEventListener('click', () => {
        if (opt.dataset.answered) return;
        // Lock all options
        quiz.classList.add('answered');
        quiz.querySelectorAll('.opt').forEach(o => {
          o.dataset.answered = '';
        });
        if (opt.dataset.correct === 'true') {
          opt.classList.add('correct');
        } else {
          opt.classList.add('wrong');
          // Highlight the correct one
          quiz.querySelector('[data-correct="true"]').classList.add('correct');
        }
      });
    });
  });
});
