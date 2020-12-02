package com.homework;

import java.util.Random;
import java.util.Scanner;
import java.util.Arrays;

// System.out.println(Arrays.toString(arr));
public class BaseBall {

	static int strike = 0;
	static int ball = 0;
	static int foul = 0;
	static int out = 0;

	public static void main(String[] args) {

		int[] com = new int[3];
		int[] user = new int[3];

		Random ran = new Random();

		while (com[0] == 0) {
			com[0] = ran.nextInt(10);

		}

		while (com[1] == 0 || com[0] == com[1]) {
			com[1] = ran.nextInt(10);

		}

		while (com[2] == 0 || com[0] == com[2] || com[1] == com[2]) {
			com[2] = ran.nextInt(10);

		}
		Scanner sc = new Scanner(System.in);

		// int all = strike + ball + foul + out;

		for (int i = 0; i < 10; i++) {

			for (int j = 0; j < user.length; j++) {
				System.out.print((j + 1) + " 번째 수 : ");
				user[j] = sc.nextInt();

				while (user[j] <= 0 || user[j] >= 10) {
					System.out.println("error : 1~9 의 수를 입력해 주세요!");
					System.out.println((j + 1) + " 번째 수 : ");
					user[j] = sc.nextInt();
				}
			}
			System.out.println();
			for (int y = 0; y < 3; y++) {

				for (int j = 0; j < 3; j++) {

					if (com[y] == user[j]) {

						if (com == user) {
							strike += 1;
							System.out.println(Arrays.toString(com));
							System.out.println(Arrays.toString(user));
							System.out.println("!!스트라이크!!");

						}
					}
				}
				
			}if (com == user) {
				strike += 1;
				System.out.println(Arrays.toString(com));
				System.out.println(Arrays.toString(user));
				System.out.println("!!스트라이크!!");

			} else if ((com[0] == user[0]) && (com[1] == user[1]) && (com[2] != user[2])) {
				System.out.println(Arrays.toString(com));
				System.out.println(Arrays.toString(user));
				System.out.println("파울!");
				foul += 1;

			} else if (com[0] == user[0] && com[2] == user[2] && com[2] != user[2]) {
				System.out.println(Arrays.toString(com));
				System.out.println(Arrays.toString(user));
				System.out.println("파울!");
				foul += 1;

			} else if (com[1] == user[1] && com[2] == user[2] && com[2] != user[2]) {
				System.out.println(Arrays.toString(com));
				System.out.println(Arrays.toString(user));
				System.out.println("파울!");
				foul += 1;

			} else if (com[0] == user[0] && com[1] != user[1] && com[2] != user[2]) {
				System.out.println(Arrays.toString(com));
				System.out.println(Arrays.toString(user));
				System.out.println("볼~");
				ball += 1;

			} else if (com[0] != user[0] && com[1] == user[1] && com[2] != user[2]) {
				System.out.println(Arrays.toString(com));
				System.out.println(Arrays.toString(user));
				System.out.println("볼~");
				ball += 1;

			} else if (com[0] != user[0] && com[1] != user[1] && com[2] == user[2]) {
				System.out.println(Arrays.toString(com));
				System.out.println(Arrays.toString(user));
				System.out.println("볼~");
				ball += 1;

			} else {
				System.out.println(Arrays.toString(com));
				System.out.println(Arrays.toString(user));
				System.out.println("아웃!");
				out += 1;
			}
			
		}
		switch (strike) {
		case 0:
			System.out.println("니가 사람이냐!!!!!!!!!!");
			break;

		case 1: case 2: case 3:
			System.out.println("와 진짜 못하네;; 노력하자..");
			break;
		case 4: case 5: case 6:
			System.out.println("조금만더 노력하면 잘할 거 같아요!!");
			break;
		case 7: case 8: case 9: case 10:
			System.out.println("오!! 최고에요~!");
			break;
		}
		sc.close();
		System.out.printf("스트라이크 : %d\n파울 : %d\n볼 : %d\n아웃 : %d\n", strike, foul, ball, out);

	}
}