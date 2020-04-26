# live-testing

Scripts to ease TDD : watch for files changes and run tests.

# Bash version

## Usage

Put [live-testing.sh](https://github.com/chapuyj/live-testing/blob/master/Sources/bash/live-testing.sh) at the root of your project, and then edit file to specify how to run unit tests.

At least, you have to edit the `runTests()` function by adding a command to run unit tests on our project.

````bash
runTests() {
  # TODO >>> RUN YOUR TESTS HERE
}
````

You can also configure the `main` part, by changing the watched folder or the timer.

````bash
### Main

folder='.'
everySeconds='2'

watch $folder $everySeconds
````

## Possible improvements

- Watching for file date changes and sleeping with the same amount of time can lead to some misses.
- Debouce / Throttle execution of tests if there are changes.
- Add a configuration file or parsing arguments for timer, watched folder, unit test command. 
