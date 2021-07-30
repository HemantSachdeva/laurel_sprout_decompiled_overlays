.class public final Lbuo;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method static final a(Ljava/lang/Long;Ljava/lang/Long;Landroid/os/health/HealthStats;Leiw;Ljava/lang/Boolean;Lbup;)Lbvi;
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    new-instance v10, Lbvi;

    iget-object v2, v1, Lbup;->b:Lbvl;

    .line 5
    sget-object v3, Lejh;->ar:Lejh;

    .line 6
    invoke-virtual {v3}, Ldkd;->g()Ldjy;

    move-result-object v3

    .line 7
    const/16 v4, 0x2711

    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-eqz v9, :cond_1

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_0

    .line 8
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_0
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 9
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->a:I

    or-int/lit8 v11, v11, 0x1

    iput v11, v9, Lejh;->a:I

    iput-wide v4, v9, Lejh;->c:J

    :cond_1
    const/16 v4, 0x2712

    .line 10
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_3

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_2

    .line 11
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_2
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 12
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->a:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v9, Lejh;->a:I

    iput-wide v4, v9, Lejh;->d:J

    :cond_3
    const/16 v4, 0x2713

    .line 13
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_5

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_4

    .line 14
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_4
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 15
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->a:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v9, Lejh;->a:I

    iput-wide v4, v9, Lejh;->e:J

    :cond_5
    const/16 v4, 0x2714

    .line 16
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_7

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_6

    .line 17
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_6
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 18
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->a:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v9, Lejh;->a:I

    iput-wide v4, v9, Lejh;->f:J

    :cond_7
    const/16 v4, 0x2715

    .line 19
    invoke-static {v0, v4}, Lcne;->c(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldjy;->i(Ljava/lang/Iterable;)V

    const/16 v4, 0x2716

    .line 20
    invoke-static {v0, v4}, Lcne;->c(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldjy;->j(Ljava/lang/Iterable;)V

    const/16 v4, 0x2717

    .line 21
    invoke-static {v0, v4}, Lcne;->c(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldjy;->k(Ljava/lang/Iterable;)V

    const/16 v4, 0x2718

    .line 22
    invoke-static {v0, v4}, Lcne;->c(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldjy;->h(Ljava/lang/Iterable;)V

    const/16 v4, 0x2719

    .line 23
    invoke-static {v0, v4}, Lcne;->c(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldjy;->g(Ljava/lang/Iterable;)V

    const/16 v4, 0x271a

    .line 24
    invoke-static {v0, v4}, Lcne;->c(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldjy;->c(Ljava/lang/Iterable;)V

    const/16 v4, 0x271b

    .line 25
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_8

    .line 26
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_8
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 27
    check-cast v5, Lejh;

    .line 28
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->m:Lejg;

    iget v4, v5, Lejh;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v5, Lejh;->a:I

    :cond_9
    const/16 v4, 0x271c

    .line 29
    invoke-static {v0, v4}, Lcne;->c(Landroid/os/health/HealthStats;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldjy;->d(Ljava/lang/Iterable;)V

    sget-object v4, Lbvc;->a:Lbvc;

    const/16 v5, 0x271e

    .line 30
    invoke-static {v0, v5}, Lcne;->d(Landroid/os/health/HealthStats;I)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbvd;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldjy;->f(Ljava/lang/Iterable;)V

    sget-object v4, Lbvb;->a:Lbvb;

    const/16 v5, 0x271f

    .line 31
    invoke-static {v0, v5}, Lcne;->d(Landroid/os/health/HealthStats;I)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbvd;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldjy;->e(Ljava/lang/Iterable;)V

    const/16 v4, 0x2720

    .line 32
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_b

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_a

    .line 33
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_a
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 34
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->a:I

    or-int/lit8 v11, v11, 0x20

    iput v11, v9, Lejh;->a:I

    iput-wide v4, v9, Lejh;->v:J

    :cond_b
    const/16 v4, 0x2721

    .line 35
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_d

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_c

    .line 36
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_c
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 37
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->a:I

    or-int/lit8 v11, v11, 0x40

    iput v11, v9, Lejh;->a:I

    iput-wide v4, v9, Lejh;->w:J

    :cond_d
    const/16 v4, 0x2722

    .line 38
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_f

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_e

    .line 39
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_e
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 40
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->a:I

    or-int/lit16 v11, v11, 0x80

    iput v11, v9, Lejh;->a:I

    iput-wide v4, v9, Lejh;->x:J

    :cond_f
    const/16 v4, 0x2723

    .line 41
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_11

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_10

    .line 42
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_10
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 43
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->a:I

    or-int/lit16 v11, v11, 0x100

    iput v11, v9, Lejh;->a:I

    iput-wide v4, v9, Lejh;->y:J

    :cond_11
    const/16 v4, 0x2724

    .line 44
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_13

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_12

    .line 45
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_12
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 46
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->a:I

    or-int/lit16 v11, v11, 0x200

    iput v11, v9, Lejh;->a:I

    iput-wide v4, v9, Lejh;->z:J

    :cond_13
    const/16 v4, 0x2725

    .line 47
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_15

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_14

    .line 48
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_14
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 49
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->a:I

    or-int/lit16 v11, v11, 0x400

    iput v11, v9, Lejh;->a:I

    iput-wide v4, v9, Lejh;->A:J

    :cond_15
    const/16 v4, 0x2726

    .line 50
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_17

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_16

    .line 51
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_16
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 52
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->a:I

    or-int/lit16 v11, v11, 0x800

    iput v11, v9, Lejh;->a:I

    iput-wide v4, v9, Lejh;->B:J

    :cond_17
    const/16 v4, 0x2727

    .line 53
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_19

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_18

    .line 54
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_18
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 55
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->a:I

    or-int/lit16 v11, v11, 0x1000

    iput v11, v9, Lejh;->a:I

    iput-wide v4, v9, Lejh;->C:J

    :cond_19
    const/16 v4, 0x2728

    .line 56
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_1b

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_1a

    .line 57
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_1a
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 58
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->a:I

    or-int/lit16 v11, v11, 0x2000

    iput v11, v9, Lejh;->a:I

    iput-wide v4, v9, Lejh;->D:J

    :cond_1b
    const/16 v4, 0x2729

    .line 59
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_1d

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_1c

    .line 60
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_1c
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 61
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->a:I

    or-int/lit16 v11, v11, 0x4000

    iput v11, v9, Lejh;->a:I

    iput-wide v4, v9, Lejh;->E:J

    :cond_1d
    const/16 v4, 0x272a

    .line 62
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const v9, 0x8000

    cmp-long v11, v4, v6

    if-eqz v11, :cond_1f

    iget-boolean v11, v3, Ldjy;->b:Z

    if-eqz v11, :cond_1e

    .line 63
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_1e
    iget-object v11, v3, Ldjy;->a:Ldkd;

    .line 64
    check-cast v11, Lejh;

    iget v12, v11, Lejh;->a:I

    or-int/2addr v12, v9

    iput v12, v11, Lejh;->a:I

    iput-wide v4, v11, Lejh;->F:J

    :cond_1f
    const/16 v4, 0x272b

    .line 65
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const/high16 v11, 0x10000

    cmp-long v12, v4, v6

    if-eqz v12, :cond_21

    iget-boolean v12, v3, Ldjy;->b:Z

    if-eqz v12, :cond_20

    .line 66
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_20
    iget-object v12, v3, Ldjy;->a:Ldkd;

    .line 67
    check-cast v12, Lejh;

    iget v13, v12, Lejh;->a:I

    or-int/2addr v13, v11

    iput v13, v12, Lejh;->a:I

    iput-wide v4, v12, Lejh;->G:J

    :cond_21
    const/16 v4, 0x272c

    .line 68
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const/high16 v12, 0x20000

    cmp-long v13, v4, v6

    if-eqz v13, :cond_23

    iget-boolean v13, v3, Ldjy;->b:Z

    if-eqz v13, :cond_22

    .line 69
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_22
    iget-object v13, v3, Ldjy;->a:Ldkd;

    .line 70
    check-cast v13, Lejh;

    iget v14, v13, Lejh;->a:I

    or-int/2addr v14, v12

    iput v14, v13, Lejh;->a:I

    iput-wide v4, v13, Lejh;->H:J

    :cond_23
    const/16 v4, 0x272d

    .line 71
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    const/high16 v13, 0x40000

    cmp-long v14, v4, v6

    if-eqz v14, :cond_25

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_24

    .line 72
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_24
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 73
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->a:I

    or-int/2addr v15, v13

    iput v15, v14, Lejh;->a:I

    iput-wide v4, v14, Lejh;->I:J

    :cond_25
    const/16 v4, 0x272e

    .line 74
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    const/high16 v5, 0x80000

    if-eqz v4, :cond_27

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_26

    .line 75
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_26
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 76
    check-cast v14, Lejh;

    .line 77
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v14, Lejh;->J:Lejg;

    iget v4, v14, Lejh;->a:I

    or-int/2addr v4, v5

    iput v4, v14, Lejh;->a:I

    :cond_27
    const/16 v4, 0x272f

    .line 78
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v14

    cmp-long v4, v14, v6

    if-eqz v4, :cond_29

    iget-boolean v4, v3, Ldjy;->b:Z

    if-eqz v4, :cond_28

    .line 79
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_28
    iget-object v4, v3, Ldjy;->a:Ldkd;

    .line 80
    check-cast v4, Lejh;

    iget v5, v4, Lejh;->a:I

    const/high16 v16, 0x100000

    or-int v5, v5, v16

    iput v5, v4, Lejh;->a:I

    iput-wide v14, v4, Lejh;->K:J

    :cond_29
    const/16 v4, 0x2730

    .line 81
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_2b

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_2a

    .line 82
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_2a
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 83
    check-cast v5, Lejh;

    .line 84
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->L:Lejg;

    iget v4, v5, Lejh;->a:I

    const/high16 v14, 0x200000

    or-int/2addr v4, v14

    iput v4, v5, Lejh;->a:I

    :cond_2b
    const/16 v4, 0x2731

    .line 85
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_2d

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_2c

    .line 86
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_2c
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 87
    check-cast v5, Lejh;

    .line 88
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->M:Lejg;

    iget v4, v5, Lejh;->a:I

    const/high16 v14, 0x400000

    or-int/2addr v4, v14

    iput v4, v5, Lejh;->a:I

    :cond_2d
    const/16 v4, 0x2732

    .line 89
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_2f

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_2e

    .line 90
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_2e
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 91
    check-cast v5, Lejh;

    .line 92
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->N:Lejg;

    iget v4, v5, Lejh;->a:I

    const/high16 v14, 0x800000

    or-int/2addr v4, v14

    iput v4, v5, Lejh;->a:I

    :cond_2f
    const/16 v4, 0x2733

    .line 93
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_31

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_30

    .line 94
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_30
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 95
    check-cast v5, Lejh;

    .line 96
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->O:Lejg;

    iget v4, v5, Lejh;->a:I

    const/high16 v14, 0x1000000

    or-int/2addr v4, v14

    iput v4, v5, Lejh;->a:I

    :cond_31
    const/16 v4, 0x2734

    .line 97
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_33

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_32

    .line 98
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_32
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 99
    check-cast v5, Lejh;

    .line 100
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->P:Lejg;

    iget v4, v5, Lejh;->a:I

    const/high16 v14, 0x2000000

    or-int/2addr v4, v14

    iput v4, v5, Lejh;->a:I

    :cond_33
    const/16 v4, 0x2735

    .line 101
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_35

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_34

    .line 102
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_34
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 103
    check-cast v5, Lejh;

    .line 104
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->Q:Lejg;

    iget v4, v5, Lejh;->a:I

    const/high16 v14, 0x4000000

    or-int/2addr v4, v14

    iput v4, v5, Lejh;->a:I

    :cond_35
    const/16 v4, 0x2736

    .line 105
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_37

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_36

    .line 106
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_36
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 107
    check-cast v5, Lejh;

    .line 108
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->R:Lejg;

    iget v4, v5, Lejh;->a:I

    const/high16 v14, 0x8000000

    or-int/2addr v4, v14

    iput v4, v5, Lejh;->a:I

    :cond_37
    const/16 v4, 0x2737

    .line 109
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_39

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_38

    .line 110
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_38
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 111
    check-cast v5, Lejh;

    .line 112
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->S:Lejg;

    iget v4, v5, Lejh;->a:I

    const/high16 v14, 0x10000000

    or-int/2addr v4, v14

    iput v4, v5, Lejh;->a:I

    :cond_39
    const/16 v4, 0x2738

    .line 113
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_3b

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_3a

    .line 114
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_3a
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 115
    check-cast v5, Lejh;

    .line 116
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->T:Lejg;

    iget v4, v5, Lejh;->a:I

    const/high16 v14, 0x20000000

    or-int/2addr v4, v14

    iput v4, v5, Lejh;->a:I

    :cond_3b
    const/16 v4, 0x2739

    .line 117
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_3d

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_3c

    .line 118
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_3c
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 119
    check-cast v5, Lejh;

    .line 120
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->U:Lejg;

    iget v4, v5, Lejh;->a:I

    const/high16 v14, 0x40000000    # 2.0f

    or-int/2addr v4, v14

    iput v4, v5, Lejh;->a:I

    :cond_3d
    const/16 v4, 0x273a

    .line 121
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_3f

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_3e

    .line 122
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_3e
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 123
    check-cast v5, Lejh;

    .line 124
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->V:Lejg;

    iget v4, v5, Lejh;->a:I

    const/high16 v14, -0x80000000

    or-int/2addr v4, v14

    iput v4, v5, Lejh;->a:I

    :cond_3f
    const/16 v4, 0x273b

    .line 125
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_41

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_40

    .line 126
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_40
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 127
    check-cast v5, Lejh;

    .line 128
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->W:Lejg;

    iget v4, v5, Lejh;->b:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v5, Lejh;->b:I

    :cond_41
    const/16 v4, 0x273c

    .line 129
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_43

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_42

    .line 130
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_42
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 131
    check-cast v5, Lejh;

    .line 132
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->X:Lejg;

    iget v4, v5, Lejh;->b:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v5, Lejh;->b:I

    :cond_43
    const/16 v4, 0x273d

    .line 133
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_45

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_44

    .line 134
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_44
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 135
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->b:I

    or-int/lit8 v15, v15, 0x4

    iput v15, v14, Lejh;->b:I

    iput-wide v4, v14, Lejh;->Y:J

    :cond_45
    const/16 v4, 0x273e

    .line 136
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_47

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_46

    .line 137
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_46
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 138
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->b:I

    or-int/lit8 v15, v15, 0x8

    iput v15, v14, Lejh;->b:I

    iput-wide v4, v14, Lejh;->Z:J

    :cond_47
    const/16 v4, 0x273f

    .line 139
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_49

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_48

    .line 140
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_48
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 141
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->b:I

    or-int/lit8 v15, v15, 0x10

    iput v15, v14, Lejh;->b:I

    iput-wide v4, v14, Lejh;->aa:J

    :cond_49
    const/16 v4, 0x2740

    .line 142
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_4b

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_4a

    .line 143
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_4a
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 144
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->b:I

    or-int/lit8 v15, v15, 0x20

    iput v15, v14, Lejh;->b:I

    iput-wide v4, v14, Lejh;->ab:J

    :cond_4b
    const/16 v4, 0x2741

    .line 145
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_4d

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_4c

    .line 146
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_4c
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 147
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->b:I

    or-int/lit8 v15, v15, 0x40

    iput v15, v14, Lejh;->b:I

    iput-wide v4, v14, Lejh;->ac:J

    :cond_4d
    const/16 v4, 0x2742

    .line 148
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_4f

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_4e

    .line 149
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_4e
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 150
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->b:I

    or-int/lit16 v15, v15, 0x80

    iput v15, v14, Lejh;->b:I

    iput-wide v4, v14, Lejh;->ad:J

    :cond_4f
    const/16 v4, 0x2743

    .line 151
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_51

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_50

    .line 152
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_50
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 153
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->b:I

    or-int/lit16 v15, v15, 0x100

    iput v15, v14, Lejh;->b:I

    iput-wide v4, v14, Lejh;->ae:J

    :cond_51
    const/16 v4, 0x2744

    .line 154
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_53

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_52

    .line 155
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_52
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 156
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->b:I

    or-int/lit16 v15, v15, 0x200

    iput v15, v14, Lejh;->b:I

    iput-wide v4, v14, Lejh;->af:J

    :cond_53
    const/16 v4, 0x2745

    .line 157
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_55

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_54

    .line 158
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_54
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 159
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->b:I

    or-int/lit16 v15, v15, 0x400

    iput v15, v14, Lejh;->b:I

    iput-wide v4, v14, Lejh;->ag:J

    :cond_55
    const/16 v4, 0x2746

    .line 160
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_57

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_56

    .line 161
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_56
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 162
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->b:I

    or-int/lit16 v15, v15, 0x800

    iput v15, v14, Lejh;->b:I

    iput-wide v4, v14, Lejh;->ah:J

    :cond_57
    const/16 v4, 0x2747

    .line 163
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_59

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_58

    .line 164
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_58
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 165
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->b:I

    or-int/lit16 v15, v15, 0x1000

    iput v15, v14, Lejh;->b:I

    iput-wide v4, v14, Lejh;->ai:J

    :cond_59
    const/16 v4, 0x2748

    .line 166
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_5b

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_5a

    .line 167
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_5a
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 168
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->b:I

    or-int/lit16 v15, v15, 0x2000

    iput v15, v14, Lejh;->b:I

    iput-wide v4, v14, Lejh;->aj:J

    :cond_5b
    const/16 v4, 0x2749

    .line 169
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_5d

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_5c

    .line 170
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_5c
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 171
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->b:I

    or-int/lit16 v15, v15, 0x4000

    iput v15, v14, Lejh;->b:I

    iput-wide v4, v14, Lejh;->ak:J

    :cond_5d
    const/16 v4, 0x274a

    .line 172
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-eqz v14, :cond_5f

    iget-boolean v14, v3, Ldjy;->b:Z

    if-eqz v14, :cond_5e

    .line 173
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_5e
    iget-object v14, v3, Ldjy;->a:Ldkd;

    .line 174
    check-cast v14, Lejh;

    iget v15, v14, Lejh;->b:I

    or-int/2addr v9, v15

    iput v9, v14, Lejh;->b:I

    iput-wide v4, v14, Lejh;->al:J

    :cond_5f
    const/16 v4, 0x274b

    .line 175
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_61

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_60

    .line 176
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_60
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 177
    check-cast v9, Lejh;

    iget v14, v9, Lejh;->b:I

    or-int/2addr v11, v14

    iput v11, v9, Lejh;->b:I

    iput-wide v4, v9, Lejh;->am:J

    :cond_61
    const/16 v4, 0x274d

    .line 178
    invoke-static {v0, v4}, Lcne;->b(Landroid/os/health/HealthStats;I)Lejg;

    move-result-object v4

    if-eqz v4, :cond_63

    iget-boolean v5, v3, Ldjy;->b:Z

    if-eqz v5, :cond_62

    .line 179
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_62
    iget-object v5, v3, Ldjy;->a:Ldkd;

    .line 180
    check-cast v5, Lejh;

    .line 181
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lejh;->an:Lejg;

    iget v4, v5, Lejh;->b:I

    or-int/2addr v4, v12

    iput v4, v5, Lejh;->b:I

    :cond_63
    const/16 v4, 0x274e

    .line 182
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_65

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_64

    .line 183
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_64
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 184
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->b:I

    or-int/2addr v11, v13

    iput v11, v9, Lejh;->b:I

    iput-wide v4, v9, Lejh;->ao:J

    :cond_65
    const/16 v4, 0x274f

    .line 185
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-eqz v9, :cond_67

    iget-boolean v9, v3, Ldjy;->b:Z

    if-eqz v9, :cond_66

    .line 186
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_66
    iget-object v9, v3, Ldjy;->a:Ldkd;

    .line 187
    check-cast v9, Lejh;

    iget v11, v9, Lejh;->b:I

    const/high16 v12, 0x80000

    or-int/2addr v11, v12

    iput v11, v9, Lejh;->b:I

    iput-wide v4, v9, Lejh;->ap:J

    :cond_67
    const/16 v4, 0x2750

    .line 188
    invoke-static {v0, v4}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_69

    iget-boolean v0, v3, Ldjy;->b:Z

    if-eqz v0, :cond_68

    .line 189
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v8, v3, Ldjy;->b:Z

    :cond_68
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 190
    check-cast v0, Lejh;

    iget v9, v0, Lejh;->b:I

    const/high16 v11, 0x100000

    or-int/2addr v9, v11

    iput v9, v0, Lejh;->b:I

    iput-wide v4, v0, Lejh;->aq:J

    .line 191
    :cond_69
    invoke-virtual {v3}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Lejh;

    const/4 v3, 0x5

    .line 192
    invoke-virtual {v0, v3}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldjy;

    .line 193
    invoke-virtual {v3, v0}, Ldjy;->a(Ldkd;)V

    iget-object v0, v2, Lbvl;->b:Lbuz;

    iget-object v2, v3, Ldjy;->a:Ldkd;

    .line 194
    check-cast v2, Lejh;

    iget-object v2, v2, Lejh;->g:Ldkk;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    iget-object v4, v3, Ldjy;->a:Ldkd;

    .line 195
    check-cast v4, Lejh;

    iget-object v4, v4, Lejh;->g:Ldkk;

    .line 196
    invoke-interface {v4}, Ldkk;->size()I

    move-result v4

    if-ge v2, v4, :cond_6a

    .line 197
    sget-object v4, Lbuy;->a:Lbuy;

    .line 198
    invoke-virtual {v3, v2}, Ldjy;->a(I)Lejg;

    move-result-object v5

    .line 197
    invoke-virtual {v0, v4, v5}, Lbuz;->a(Lbuy;Lejg;)Lejg;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ldjy;->e(ILejg;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6a
    iget-object v2, v3, Ldjy;->a:Ldkd;

    .line 199
    check-cast v2, Lejh;

    iget-object v2, v2, Lejh;->h:Ldkk;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    :goto_1
    iget-object v4, v3, Ldjy;->a:Ldkd;

    .line 200
    check-cast v4, Lejh;

    iget-object v4, v4, Lejh;->h:Ldkk;

    .line 201
    invoke-interface {v4}, Ldkk;->size()I

    move-result v4

    if-ge v2, v4, :cond_6b

    .line 202
    sget-object v4, Lbuy;->a:Lbuy;

    .line 203
    invoke-virtual {v3, v2}, Ldjy;->b(I)Lejg;

    move-result-object v5

    .line 202
    invoke-virtual {v0, v4, v5}, Lbuz;->a(Lbuy;Lejg;)Lejg;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ldjy;->f(ILejg;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6b
    iget-object v2, v3, Ldjy;->a:Ldkd;

    .line 204
    check-cast v2, Lejh;

    iget-object v2, v2, Lejh;->i:Ldkk;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    :goto_2
    iget-object v4, v3, Ldjy;->a:Ldkd;

    .line 205
    check-cast v4, Lejh;

    iget-object v4, v4, Lejh;->i:Ldkk;

    .line 206
    invoke-interface {v4}, Ldkk;->size()I

    move-result v4

    if-ge v2, v4, :cond_6c

    .line 207
    sget-object v4, Lbuy;->a:Lbuy;

    .line 208
    invoke-virtual {v3, v2}, Ldjy;->c(I)Lejg;

    move-result-object v5

    .line 207
    invoke-virtual {v0, v4, v5}, Lbuz;->a(Lbuy;Lejg;)Lejg;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ldjy;->g(ILejg;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6c
    iget-object v2, v3, Ldjy;->a:Ldkd;

    .line 209
    check-cast v2, Lejh;

    iget-object v2, v2, Lejh;->j:Ldkk;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    :goto_3
    iget-object v4, v3, Ldjy;->a:Ldkd;

    .line 210
    check-cast v4, Lejh;

    iget-object v4, v4, Lejh;->j:Ldkk;

    .line 211
    invoke-interface {v4}, Ldkk;->size()I

    move-result v4

    if-ge v2, v4, :cond_6d

    .line 212
    sget-object v4, Lbuy;->a:Lbuy;

    .line 213
    invoke-virtual {v3, v2}, Ldjy;->d(I)Lejg;

    move-result-object v5

    .line 212
    invoke-virtual {v0, v4, v5}, Lbuz;->a(Lbuy;Lejg;)Lejg;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ldjy;->d(ILejg;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6d
    iget-object v2, v3, Ldjy;->a:Ldkd;

    .line 214
    check-cast v2, Lejh;

    iget-object v2, v2, Lejh;->k:Ldkk;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    :goto_4
    iget-object v4, v3, Ldjy;->a:Ldkd;

    .line 215
    check-cast v4, Lejh;

    iget-object v4, v4, Lejh;->k:Ldkk;

    .line 216
    invoke-interface {v4}, Ldkk;->size()I

    move-result v4

    if-ge v2, v4, :cond_6e

    .line 217
    sget-object v4, Lbuy;->b:Lbuy;

    .line 218
    invoke-virtual {v3, v2}, Ldjy;->e(I)Lejg;

    move-result-object v5

    .line 217
    invoke-virtual {v0, v4, v5}, Lbuz;->a(Lbuy;Lejg;)Lejg;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ldjy;->c(ILejg;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6e
    iget-object v2, v3, Ldjy;->a:Ldkd;

    .line 219
    check-cast v2, Lejh;

    iget-object v2, v2, Lejh;->l:Ldkk;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x0

    :goto_5
    iget-object v4, v3, Ldjy;->a:Ldkd;

    .line 220
    check-cast v4, Lejh;

    iget-object v4, v4, Lejh;->l:Ldkk;

    .line 221
    invoke-interface {v4}, Ldkk;->size()I

    move-result v4

    if-ge v2, v4, :cond_6f

    .line 222
    sget-object v4, Lbuy;->c:Lbuy;

    .line 223
    invoke-virtual {v3, v2}, Ldjy;->f(I)Lejg;

    move-result-object v5

    .line 222
    invoke-virtual {v0, v4, v5}, Lbuz;->a(Lbuy;Lejg;)Lejg;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ldjy;->a(ILejg;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6f
    iget-object v2, v3, Ldjy;->a:Ldkd;

    .line 224
    check-cast v2, Lejh;

    iget-object v2, v2, Lejh;->n:Ldkk;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    :goto_6
    iget-object v2, v3, Ldjy;->a:Ldkd;

    .line 225
    check-cast v2, Lejh;

    iget-object v2, v2, Lejh;->n:Ldkk;

    .line 226
    invoke-interface {v2}, Ldkk;->size()I

    move-result v2

    if-ge v8, v2, :cond_70

    .line 227
    sget-object v2, Lbuy;->e:Lbuy;

    .line 228
    invoke-virtual {v3, v8}, Ldjy;->g(I)Lejg;

    move-result-object v4

    .line 227
    invoke-virtual {v0, v2, v4}, Lbuz;->a(Lbuy;Lejg;)Lejg;

    move-result-object v2

    invoke-virtual {v3, v8, v2}, Ldjy;->b(ILejg;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 229
    :cond_70
    invoke-virtual {v3}, Ldjy;->f()Ldkd;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lejh;

    iget-object v0, v1, Lbup;->c:Leip;

    .line 230
    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrx;

    iget-object v4, v0, Lbrx;->h:Ljava/lang/Long;

    iget-object v0, v1, Lbup;->c:Leip;

    .line 231
    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrx;

    iget-object v0, v0, Lbrx;->d:Ljava/lang/String;

    if-nez v0, :cond_71

    goto :goto_7

    .line 232
    :cond_71
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v6, v0

    .line 233
    :goto_7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lbvi;-><init>(Lejh;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Leiw;Ljava/lang/String;Ljava/lang/Boolean;Lekw;)V

    return-object v10
.end method

.method public static synthetic a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    const-string p0, "EXPLICITLY_DISABLED"

    return-object p0

    :cond_1
    const-string p0, "EXPLICITLY_ENABLED"

    return-object p0

    :cond_2
    const-string p0, "DEFAULT"

    return-object p0
.end method

.method public static a(Lcom/google/android/gms/common/api/Status;Lbpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lbpl;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lbpl;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lbpl;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lbep;

    .line 4
    invoke-direct {p1, p0}, Lbep;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p2, p1}, Lbpl;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic b(I)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method
