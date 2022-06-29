## IF


말 그대로 조건문, 무언가를 비교를 함.

```bash

if [ CONDITION ] ; then

    <COMMAND>

fi

if [[ CONDITION ]]
then

    <COMMAND>

fi    

```


```bash
#!/bin/bash

if IamNotACommand (존재하지 않는것) ---> $ echo $? (1)
if pwd (존재하는 명령) ---> $ echo $? (0)
then
    echo "It worked"
fi

```


```bash


`ls -al`

echo `ls -al`


```


__쉘 괄호 참조__

[https://unix.stackexchange.com/questions/306111/what-is-the-difference-between-the-bash-operators-vs-vs-vs](쉘 괄호대전)

>if [ condition ]
>
>[ is another name for the traditional test command. [ / test is a standard POSIX utility. All POSIX shells have it builtin (though that's not required by POSIX²). The test command sets an exit code and the if statement acts accordingly. Typical tests are whether a file exists or one number is equal to another.
>
>if [[ condition ]]
>
>This is a new upgraded variation on test¹ from ksh that bash, zsh, yash, busybox sh also support. This [[ ... ]] construct also sets an exit code and the if statement acts accordingly. Among its extended features, it can test whether a string matches a wildcard pattern (not in busybox sh).
>
>if ((condition))
>
>Another ksh extension that bash and zsh also support. This performs arithmetic. As the result of the arithmetic, an exit code is set and the if statement acts accordingly. It returns an exit code of zero (true) if the result of the arithmetic calculation is nonzero. Like [[...]], this form is not POSIX and therefore not portable.
>
>if (command)
>
>This runs command in a subshell. When command completes, it sets an exit code and the if statement acts accordingly.
>
>A typical reason for using a subshell like this is to limit side-effects of command if command required variable assignments or other changes to the shell's environment. Such changes do not remain after the subshell completes.
>
>if command
>
>command is executed and the if statement acts according to its exit code.
>
