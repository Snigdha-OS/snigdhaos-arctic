        2. Step 2...
        3. Step 3...
    validations:
      required: true

  - type: textarea
    attributes:
      label: Expected behavior
      description: |
        How did you expect your project to behave? It’s fine if you’re not sure your understanding is correct. Write down what you thought would happen.
      placeholder: Write what you thought would happen.
    validations:
      required: true

  - type: textarea
    attributes:
      label: Actual behavior
      description: |
        Did something go wrong? Is something broken, or not behaving as you expected?
        Describe this section in detail, and attach screenshots if possible. Don't only say "it doesn't work"!
        Please submit exhaustive and complete log messages (we also need the error stack-traces, not just the message).
        > Please read error messages carefully: it often tells you exactly what you are doing wrong.
      placeholder: Write what happened. Add full console log messages and screenshots, if applicable.
    validations:
      required: true

  - type: textarea
    attributes:
      label: Your environment
      description: Include as many relevant details about the environment you experienced the bug in.
      value: |
        - Public source code:
        - Public site URL:
        - Docusaurus version used:
        - Environment name and version (e.g. Chrome 89, Node.js 16.4):
        - Operating system and version (e.g. Ubuntu 20.04.2 LTS):

  - type: checkboxes
    attributes:
      label: Self-service
      description: |
        If you feel like you could contribute to this issue, please check the box below. This would tell us and other people looking for contributions that someone's working on it.
        If you do check this box, please send a pull request within 7 days so we can still delegate this to someone else.
      options:
        - label: I'd be willing to fix this bug myself
