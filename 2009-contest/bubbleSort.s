.att_syntax prefix
.text
.globl _IprintNum_pi
_IprintNum_pi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(x)
	movq $24, %rbx		# movq $24, %r(663)
	movq %rbx, %rdi		# movq %r(663), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(654)
	movq %rbx, %rbx		# movq %r(654), %r(616)
	movq $2, %r12		# movq $2, %r(664)
	movq %r12, (%rbx)		# movq %r(664), (%r(616))
	movq $8, %r12		# movq $8, %r(665)
	movq %rbx, %rbx		# movq %r(616), %r(666)
	addq %r12, %rbx		# addq %r(665), %r(666)
	movq %rbx, %r15		# movq %r(666), %r(615)
	movq $0, %rbx		# movq $0, %r(667)
	movq %r15, %r14		# movq %r(615), %r(668)
	addq %rbx, %r14		# addq %r(667), %r(668)
	movq $48, %rbx		# movq $48, %r(669)
	movq %r13, %r13		# movq %r(x), %r(670)
	addq %rbx, %r13		# addq %r(669), %r(670)
	movq %r13, (%r14)		# movq %r(670), (%r(668))
	movq $8, %rbx		# movq $8, %r(671)
	movq %r15, %r13		# movq %r(615), %r(672)
	addq %rbx, %r13		# addq %r(671), %r(672)
	movq $46, %rbx		# movq $46, %r(673)
	movq %rbx, (%r13)		# movq %r(673), (%r(672))
	movq %r15, %r15		# movq %r(615), %r(y)
	movq %r15, %rdi		# movq %r(y), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L69:		# .L69:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IbubbleSort_aiai
_IbubbleSort_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $208, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(723)
	movq %rbx, -120(%rbp)		# movq %r(723), -120(%rbp)
	movq $0, %r12		# movq $0, %r(674)
	movq %r12, %r12		# movq %r(674), %r(724)
	movq %r12, -184(%rbp)		# movq %r(724), -184(%rbp)
	.L71:		# .L71:
	movq $8, %rbx		# movq $8, %r(675)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(725)
	movq %r13, %r13		# movq %r(725), %r(676)
	subq %rbx, %r13		# subq %r(675), %r(676)
	movq (%r13), %r13		# movq (%r(676)), %r(677)
	movq $1, %r12		# movq $1, %r(678)
	movq %r13, %r13		# movq %r(677), %r(679)
	subq %r12, %r13		# subq %r(678), %r(679)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(726)
	cmpq %r13, %r12		# cmpq %r(679), %r(726)
	jge .L73		# jge .L73
	.L72:		# .L72:
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(727)
	movq %r12, %r12		# movq %r(727), %r(728)
	movq %r12, -8(%rbp)		# movq %r(728), -8(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(729)
	movq %r12, %r12		# movq %r(729), %r(730)
	movq %r12, -192(%rbp)		# movq %r(730), -192(%rbp)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(731)
	movq %rbx, %rbx		# movq %r(731), %r(623)
	movq $8, %r13		# movq $8, %r(680)
	movq -192(%rbp), %r14		# movq -192(%rbp), %r(732)
	movq %r14, %r14		# movq %r(732), %r(733)
	movq %r14, -136(%rbp)		# movq %r(733), -136(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(734)
	subq %r13, %r12		# subq %r(680), %r(734)
	movq %r12, -136(%rbp)		# movq %r(734), -136(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(735)
	movq (%r12), %r12		# movq (%r(735)), %r(682)
	cmpq %r12, %rbx		# cmpq %r(682), %r(623)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(623), %r(683)
	salq $3, %rbx		# salq $3, %r(683)
	movq -192(%rbp), %r13		# movq -192(%rbp), %r(736)
	movq %r13, %r13		# movq %r(736), %r(684)
	addq %rbx, %r13		# addq %r(683), %r(684)
	movq (%r13), %r12		# movq (%r(684)), %r(685)
	movq %r12, %r12		# movq %r(685), %r(737)
	movq %r12, -144(%rbp)		# movq %r(737), -144(%rbp)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(738)
	movq %r12, %r12		# movq %r(738), %r(739)
	movq %r12, -24(%rbp)		# movq %r(739), -24(%rbp)
	.L76:		# .L76:
	movq $8, %r12		# movq $8, %r(686)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(740)
	movq %r13, %r13		# movq %r(740), %r(741)
	movq %r13, -32(%rbp)		# movq %r(741), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(742)
	subq %r12, %rbx		# subq %r(686), %r(742)
	movq %rbx, -32(%rbp)		# movq %r(742), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(743)
	movq (%rbx), %rbx		# movq (%r(743)), %r(688)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(744)
	cmpq %rbx, %r12		# cmpq %r(688), %r(744)
	jge .L78		# jge .L78
	.L77:		# .L77:
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(745)
	movq %r12, %r12		# movq %r(745), %r(746)
	movq %r12, -56(%rbp)		# movq %r(746), -56(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(747)
	movq %r12, %r12		# movq %r(747), %r(748)
	movq %r12, -168(%rbp)		# movq %r(748), -168(%rbp)
	movq $8, %r12		# movq $8, %r(689)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(749)
	movq %r13, %r13		# movq %r(749), %r(750)
	movq %r13, -128(%rbp)		# movq %r(750), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(751)
	subq %r12, %rbx		# subq %r(689), %r(751)
	movq %rbx, -128(%rbp)		# movq %r(751), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(752)
	movq (%rbx), %rbx		# movq (%r(752)), %r(691)
	movq -168(%rbp), %r12		# movq -168(%rbp), %r(753)
	cmpq %rbx, %r12		# cmpq %r(691), %r(753)
	jae error_outofbounds		# jae error_outofbounds
	movq -168(%rbp), %r12		# movq -168(%rbp), %r(754)
	movq %r12, %r12		# movq %r(754), %r(755)
	movq %r12, -40(%rbp)		# movq %r(755), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(756)
	salq $3, %rbx		# salq $3, %r(756)
	movq %rbx, -40(%rbp)		# movq %r(756), -40(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(757)
	movq %r13, %r13		# movq %r(757), %r(693)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(758)
	addq %r12, %r13		# addq %r(758), %r(693)
	movq (%r13), %rbx		# movq (%r(693)), %r(694)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(759)
	cmpq %r12, %rbx		# cmpq %r(759), %r(694)
	jge .L82		# jge .L82
	.L81:		# .L81:
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(760)
	movq %r12, %r12		# movq %r(760), %r(761)
	movq %r12, -96(%rbp)		# movq %r(761), -96(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(762)
	movq %rbx, %rbx		# movq %r(762), %r(627)
	movq $8, %r13		# movq $8, %r(695)
	movq -96(%rbp), %r14		# movq -96(%rbp), %r(763)
	movq %r14, %r14		# movq %r(763), %r(764)
	movq %r14, -48(%rbp)		# movq %r(764), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(765)
	subq %r13, %r12		# subq %r(695), %r(765)
	movq %r12, -48(%rbp)		# movq %r(765), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(766)
	movq (%r12), %r12		# movq (%r(766)), %r(697)
	cmpq %r12, %rbx		# cmpq %r(697), %r(627)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(627), %r(698)
	salq $3, %rbx		# salq $3, %r(698)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(767)
	movq %r13, %r13		# movq %r(767), %r(699)
	addq %rbx, %r13		# addq %r(698), %r(699)
	movq (%r13), %r12		# movq (%r(699)), %r(700)
	movq %r12, %r12		# movq %r(700), %r(768)
	movq %r12, -144(%rbp)		# movq %r(768), -144(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(769)
	movq %r12, %r12		# movq %r(769), %r(770)
	movq %r12, -24(%rbp)		# movq %r(770), -24(%rbp)
	.L82:		# .L82:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(771)
	incq %rbx		# incq %r(771)
	movq %rbx, -8(%rbp)		# movq %r(771), -8(%rbp)
	jmp .L76		# jmp .L76
	.L78:		# .L78:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(772)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(773)
	cmpq %r12, %rbx		# cmpq %r(773), %r(772)
	je .L86		# je .L86
	.L85:		# .L85:
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(774)
	movq %r12, %r12		# movq %r(774), %r(775)
	movq %r12, -152(%rbp)		# movq %r(775), -152(%rbp)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(776)
	movq %rbx, %rbx		# movq %r(776), %r(630)
	movq $8, %r13		# movq $8, %r(701)
	movq -152(%rbp), %r14		# movq -152(%rbp), %r(777)
	movq %r14, %r14		# movq %r(777), %r(778)
	movq %r14, -16(%rbp)		# movq %r(778), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(779)
	subq %r13, %r12		# subq %r(701), %r(779)
	movq %r12, -16(%rbp)		# movq %r(779), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(780)
	movq (%r12), %r12		# movq (%r(780)), %r(703)
	cmpq %r12, %rbx		# cmpq %r(703), %r(630)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(630), %r(704)
	salq $3, %rbx		# salq $3, %r(704)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(781)
	movq %r13, %r13		# movq %r(781), %r(705)
	addq %rbx, %r13		# addq %r(704), %r(705)
	movq (%r13), %r12		# movq (%r(705)), %r(706)
	movq %r12, %r12		# movq %r(706), %r(782)
	movq %r12, -112(%rbp)		# movq %r(782), -112(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(783)
	movq %r12, %r12		# movq %r(783), %r(784)
	movq %r12, -160(%rbp)		# movq %r(784), -160(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(785)
	movq %r12, %r12		# movq %r(785), %r(786)
	movq %r12, -64(%rbp)		# movq %r(786), -64(%rbp)
	movq $8, %rbx		# movq $8, %r(707)
	movq -160(%rbp), %r13		# movq -160(%rbp), %r(787)
	movq %r13, %r13		# movq %r(787), %r(708)
	subq %rbx, %r13		# subq %r(707), %r(708)
	movq (%r13), %rbx		# movq (%r(708)), %r(709)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(788)
	cmpq %rbx, %r12		# cmpq %r(709), %r(788)
	jae error_outofbounds		# jae error_outofbounds
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(789)
	movq %rbx, %rbx		# movq %r(789), %r(631)
	movq -184(%rbp), %r13		# movq -184(%rbp), %r(790)
	movq %r13, %r13		# movq %r(790), %r(791)
	movq %r13, -72(%rbp)		# movq %r(791), -72(%rbp)
	movq $8, %r13		# movq $8, %r(710)
	movq %rbx, %r14		# movq %r(631), %r(792)
	movq %r14, -88(%rbp)		# movq %r(792), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(793)
	subq %r13, %r12		# subq %r(710), %r(793)
	movq %r12, -88(%rbp)		# movq %r(793), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(794)
	movq (%r12), %r12		# movq (%r(794)), %r(712)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(795)
	cmpq %r12, %r13		# cmpq %r(712), %r(795)
	jae error_outofbounds		# jae error_outofbounds
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(796)
	movq %r13, %r13		# movq %r(796), %r(713)
	salq $3, %r13		# salq $3, %r(713)
	movq %rbx, %rbx		# movq %r(631), %r(797)
	movq %rbx, -80(%rbp)		# movq %r(797), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(798)
	addq %r13, %rbx		# addq %r(713), %r(798)
	movq %rbx, -80(%rbp)		# movq %r(798), -80(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(799)
	movq %r13, %r13		# movq %r(799), %r(715)
	salq $3, %r13		# salq $3, %r(715)
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(800)
	movq %rbx, %rbx		# movq %r(800), %r(716)
	addq %r13, %rbx		# addq %r(715), %r(716)
	movq (%rbx), %rbx		# movq (%r(716)), %r(717)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(801)
	movq %rbx, (%r12)		# movq %r(717), (%r(801))
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(802)
	movq %r12, %r12		# movq %r(802), %r(803)
	movq %r12, -104(%rbp)		# movq %r(803), -104(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(804)
	movq %rbx, %rbx		# movq %r(804), %r(636)
	movq $8, %r13		# movq $8, %r(718)
	movq -104(%rbp), %r14		# movq -104(%rbp), %r(805)
	movq %r14, %r14		# movq %r(805), %r(806)
	movq %r14, -176(%rbp)		# movq %r(806), -176(%rbp)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(807)
	subq %r13, %r12		# subq %r(718), %r(807)
	movq %r12, -176(%rbp)		# movq %r(807), -176(%rbp)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(808)
	movq (%r12), %r12		# movq (%r(808)), %r(720)
	cmpq %r12, %rbx		# cmpq %r(720), %r(636)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(636), %r(721)
	salq $3, %rbx		# salq $3, %r(721)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(809)
	movq %r13, %r13		# movq %r(809), %r(722)
	addq %rbx, %r13		# addq %r(721), %r(722)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(810)
	movq %rbx, (%r13)		# movq %r(810), (%r(722))
	.L86:		# .L86:
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(811)
	incq %rbx		# incq %r(811)
	movq %rbx, -184(%rbp)		# movq %r(811), -184(%rbp)
	jmp .L71		# jmp .L71
	.L73:		# .L73:
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(812)
	movq %rbx, %rax		# movq %r(812), %rax
	jmp .L70		# jmp .L70
	.L70:		# .L70:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $208, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $40, %rbx		# movq $40, %r(813)
	movq %rbx, %rdi		# movq %r(813), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(656)
	movq %rbx, %rbx		# movq %r(656), %r(640)
	movq $4, %r12		# movq $4, %r(814)
	movq %r12, (%rbx)		# movq %r(814), (%r(640))
	movq $8, %r12		# movq $8, %r(815)
	movq %rbx, %rbx		# movq %r(640), %r(816)
	addq %r12, %rbx		# addq %r(815), %r(816)
	movq %rbx, %rbx		# movq %r(816), %r(639)
	movq $0, %r12		# movq $0, %r(817)
	movq %rbx, %r14		# movq %r(639), %r(818)
	addq %r12, %r14		# addq %r(817), %r(818)
	movq $6, %r12		# movq $6, %r(819)
	movq %r12, (%r14)		# movq %r(819), (%r(818))
	movq $8, %r12		# movq $8, %r(820)
	movq %rbx, %r14		# movq %r(639), %r(821)
	addq %r12, %r14		# addq %r(820), %r(821)
	movq $3, %r12		# movq $3, %r(822)
	movq %r12, (%r14)		# movq %r(822), (%r(821))
	movq $16, %r12		# movq $16, %r(823)
	movq %rbx, %r14		# movq %r(639), %r(824)
	addq %r12, %r14		# addq %r(823), %r(824)
	movq $4, %r12		# movq $4, %r(825)
	movq %r12, (%r14)		# movq %r(825), (%r(824))
	movq $24, %r12		# movq $24, %r(826)
	movq %rbx, %r14		# movq %r(639), %r(827)
	addq %r12, %r14		# addq %r(826), %r(827)
	movq $7, %r12		# movq $7, %r(828)
	movq %r12, (%r14)		# movq %r(828), (%r(827))
	movq %rbx, %rbx		# movq %r(639), %r(x)
	movq %rbx, %rdi		# movq %r(x), %rdi
	call _IbubbleSort_aiai		# call _IbubbleSort_aiai
	movq %rax, %r12		# movq %rax, %r(657)
	movq %r12, %r12		# movq %r(657), %r(869)
	movq %r12, -56(%rbp)		# movq %r(869), -56(%rbp)
	movq $1, %r12		# movq $1, %r(829)
	movq %r12, %r12		# movq %r(829), %r(870)
	movq %r12, -32(%rbp)		# movq %r(870), -32(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(871)
	movq %r12, %r12		# movq %r(871), %r(872)
	movq %r12, -16(%rbp)		# movq %r(872), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(830)
	movq %rbx, %rbx		# movq %r(830), %r(643)
	movq $8, %r13		# movq $8, %r(831)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(873)
	movq %r14, %r14		# movq %r(873), %r(874)
	movq %r14, -24(%rbp)		# movq %r(874), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(875)
	subq %r13, %r12		# subq %r(831), %r(875)
	movq %r12, -24(%rbp)		# movq %r(875), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(876)
	movq (%r12), %r12		# movq (%r(876)), %r(833)
	cmpq %r12, %rbx		# cmpq %r(833), %r(643)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(643), %r(834)
	salq $3, %rbx		# salq $3, %r(834)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(877)
	movq %r13, %r13		# movq %r(877), %r(835)
	addq %rbx, %r13		# addq %r(834), %r(835)
	movq (%r13), %rbx		# movq (%r(835)), %r(836)
	movq $3, %r12		# movq $3, %r(837)
	cmpq %r12, %rbx		# cmpq %r(837), %r(836)
	je .L98		# je .L98
	.L99:		# .L99:
	movq $0, %r12		# movq $0, %r(838)
	movq %r12, %r12		# movq %r(838), %r(878)
	movq %r12, -32(%rbp)		# movq %r(878), -32(%rbp)
	.L98:		# .L98:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(879)
	movq %rbx, %rdi		# movq %r(879), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(839)
	movq %r12, %r12		# movq %r(839), %r(880)
	movq %r12, -40(%rbp)		# movq %r(880), -40(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(881)
	movq %r12, %r12		# movq %r(881), %r(882)
	movq %r12, -64(%rbp)		# movq %r(882), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(840)
	movq %rbx, %rbx		# movq %r(840), %r(646)
	movq $8, %r13		# movq $8, %r(841)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(883)
	movq %r14, %r14		# movq %r(883), %r(884)
	movq %r14, -8(%rbp)		# movq %r(884), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(885)
	subq %r13, %r12		# subq %r(841), %r(885)
	movq %r12, -8(%rbp)		# movq %r(885), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(886)
	movq (%r12), %r12		# movq (%r(886)), %r(843)
	cmpq %r12, %rbx		# cmpq %r(843), %r(646)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(646), %r(844)
	salq $3, %rbx		# salq $3, %r(844)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(887)
	movq %r13, %r13		# movq %r(887), %r(845)
	addq %rbx, %r13		# addq %r(844), %r(845)
	movq (%r13), %rbx		# movq (%r(845)), %r(846)
	movq $4, %r12		# movq $4, %r(847)
	cmpq %r12, %rbx		# cmpq %r(847), %r(846)
	je .L102		# je .L102
	.L103:		# .L103:
	movq $0, %r12		# movq $0, %r(848)
	movq %r12, %r12		# movq %r(848), %r(888)
	movq %r12, -40(%rbp)		# movq %r(888), -40(%rbp)
	.L102:		# .L102:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(889)
	movq %rbx, %rdi		# movq %r(889), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(849)
	movq %rbx, %r14		# movq %r(849), %r(650)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(890)
	movq %rbx, %r15		# movq %r(890), %r(648)
	movq $2, %rbx		# movq $2, %r(850)
	movq %rbx, %r12		# movq %r(850), %r(649)
	movq $8, %r13		# movq $8, %r(851)
	movq %r15, %rbx		# movq %r(648), %r(891)
	movq %rbx, -48(%rbp)		# movq %r(891), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(892)
	subq %r13, %rbx		# subq %r(851), %r(892)
	movq %rbx, -48(%rbp)		# movq %r(892), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(893)
	movq (%rbx), %rbx		# movq (%r(893)), %r(853)
	cmpq %rbx, %r12		# cmpq %r(853), %r(649)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %r12		# movq %r(649), %r(854)
	salq $3, %r12		# salq $3, %r(854)
	movq %r15, %rbx		# movq %r(648), %r(855)
	addq %r12, %rbx		# addq %r(854), %r(855)
	movq (%rbx), %rbx		# movq (%r(855)), %r(856)
	movq $6, %r12		# movq $6, %r(857)
	cmpq %r12, %rbx		# cmpq %r(857), %r(856)
	je .L106		# je .L106
	.L107:		# .L107:
	movq $0, %rbx		# movq $0, %r(858)
	movq %rbx, %r14		# movq %r(858), %r(650)
	.L106:		# .L106:
	movq %r14, %rdi		# movq %r(650), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(859)
	movq %rbx, %r14		# movq %r(859), %r(653)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(894)
	movq %rbx, %r15		# movq %r(894), %r(651)
	movq $3, %rbx		# movq $3, %r(860)
	movq %rbx, %r12		# movq %r(860), %r(652)
	movq $8, %rbx		# movq $8, %r(861)
	movq %r15, %r13		# movq %r(651), %r(862)
	subq %rbx, %r13		# subq %r(861), %r(862)
	movq (%r13), %rbx		# movq (%r(862)), %r(863)
	cmpq %rbx, %r12		# cmpq %r(863), %r(652)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %r12		# movq %r(652), %r(864)
	salq $3, %r12		# salq $3, %r(864)
	movq %r15, %rbx		# movq %r(651), %r(865)
	addq %r12, %rbx		# addq %r(864), %r(865)
	movq (%rbx), %rbx		# movq (%r(865)), %r(866)
	movq $7, %r12		# movq $7, %r(867)
	cmpq %r12, %rbx		# cmpq %r(867), %r(866)
	je .L110		# je .L110
	.L111:		# .L111:
	movq $0, %rbx		# movq $0, %r(868)
	movq %rbx, %r14		# movq %r(868), %r(653)
	.L110:		# .L110:
	movq %r14, %rdi		# movq %r(653), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L95:		# .L95:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
error_outofbounds:
call _I_outOfBounds_p
