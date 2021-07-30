.class public final Lacy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Laqd;


# instance fields
.field private final b:Lapm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CloudRestoreEventLogger"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lacy;->a:Laqd;

    return-void
.end method

.method public constructor <init>(Lapm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lacy;->b:Lapm;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lacy;
    .locals 2

    new-instance v0, Lapm;

    .line 80
    const-string v1, "ANDROID_BACKUP"

    invoke-direct {v0, p0, v1}, Lapm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lacy;

    .line 81
    invoke-direct {p0, v0}, Lacy;-><init>(Lapm;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lawo;)V
    .locals 4

    .line 2
    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object v0

    .line 3
    sget-object v1, Lawp;->d:Lawp;

    .line 4
    invoke-virtual {v1}, Ldkd;->g()Ldjy;

    move-result-object v1

    iget-boolean v2, v1, Ldjy;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v3, v1, Ldjy;->b:Z

    :cond_0
    iget-object v2, v1, Ldjy;->a:Ldkd;

    .line 6
    check-cast v2, Lawp;

    iget p1, p1, Lawo;->h:I

    iput p1, v2, Lawp;->b:I

    iget p1, v2, Lawp;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Lawp;->a:I

    iget-boolean p1, v0, Ldjy;->b:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v3, v0, Ldjy;->b:Z

    :cond_1
    iget-object p1, v0, Ldjy;->a:Ldkd;

    .line 8
    check-cast p1, Lavi;

    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object v1

    check-cast v1, Lawp;

    sget-object v2, Lavi;->q:Lavi;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lavi;->g:Lawp;

    iget v1, p1, Lavi;->a:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, p1, Lavi;->a:I

    .line 10
    sget-object p1, Lavh;->t:Lavh;

    invoke-virtual {p0, v0, p1}, Lacy;->a(Ldjy;Lavh;)V

    return-void
.end method

.method public final a(Laww;J)V
    .locals 4

    .line 20
    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object v0

    .line 21
    sget-object v1, Lawx;->e:Lawx;

    .line 22
    invoke-virtual {v1}, Ldkd;->g()Ldjy;

    move-result-object v1

    iget-boolean v2, v1, Ldjy;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v3, v1, Ldjy;->b:Z

    :cond_0
    iget-object v2, v1, Ldjy;->a:Ldkd;

    .line 24
    check-cast v2, Lawx;

    iget p1, p1, Laww;->f:I

    iput p1, v2, Lawx;->b:I

    iget p1, v2, Lawx;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Lawx;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v2, Lawx;->a:I

    iput-wide p2, v2, Lawx;->d:J

    iget-boolean p1, v0, Ldjy;->b:Z

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v3, v0, Ldjy;->b:Z

    :cond_1
    iget-object p1, v0, Ldjy;->a:Ldkd;

    .line 26
    check-cast p1, Lavi;

    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object p2

    check-cast p2, Lawx;

    sget-object p3, Lavi;->q:Lavi;

    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lavi;->f:Lawx;

    iget p2, p1, Lavi;->a:I

    const/high16 p3, 0x100000

    or-int/2addr p2, p3

    iput p2, p1, Lavi;->a:I

    .line 28
    sget-object p1, Lavh;->s:Lavh;

    invoke-virtual {p0, v0, p1}, Lacy;->a(Ldjy;Lavh;)V

    return-void
.end method

.method public final a(Laww;Lawu;)V
    .locals 4

    .line 11
    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object v0

    .line 12
    sget-object v1, Lawx;->e:Lawx;

    .line 13
    invoke-virtual {v1}, Ldkd;->g()Ldjy;

    move-result-object v1

    iget-boolean v2, v1, Ldjy;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v3, v1, Ldjy;->b:Z

    :cond_0
    iget-object v2, v1, Ldjy;->a:Ldkd;

    .line 15
    check-cast v2, Lawx;

    iget p1, p1, Laww;->f:I

    iput p1, v2, Lawx;->b:I

    iget p1, v2, Lawx;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Lawx;->a:I

    iget p2, p2, Lawu;->f:I

    iput p2, v2, Lawx;->c:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v2, Lawx;->a:I

    iget-boolean p1, v0, Ldjy;->b:Z

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v3, v0, Ldjy;->b:Z

    :cond_1
    iget-object p1, v0, Ldjy;->a:Ldkd;

    .line 17
    check-cast p1, Lavi;

    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object p2

    check-cast p2, Lawx;

    sget-object v1, Lavi;->q:Lavi;

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lavi;->f:Lawx;

    iget p2, p1, Lavi;->a:I

    const/high16 v1, 0x100000

    or-int/2addr p2, v1

    iput p2, p1, Lavi;->a:I

    .line 19
    sget-object p1, Lavh;->s:Lavh;

    invoke-virtual {p0, v0, p1}, Lacy;->a(Ldjy;Lavh;)V

    return-void
.end method

.method public final a(Lawz;)V
    .locals 4

    .line 29
    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object v0

    .line 30
    sget-object v1, Laxa;->c:Laxa;

    .line 31
    invoke-virtual {v1}, Ldkd;->g()Ldjy;

    move-result-object v1

    iget-boolean v2, v1, Ldjy;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v3, v1, Ldjy;->b:Z

    :cond_0
    iget-object v2, v1, Ldjy;->a:Ldkd;

    .line 33
    check-cast v2, Laxa;

    iget p1, p1, Lawz;->e:I

    iput p1, v2, Laxa;->b:I

    iget p1, v2, Laxa;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Laxa;->a:I

    iget-boolean p1, v0, Ldjy;->b:Z

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v3, v0, Ldjy;->b:Z

    :cond_1
    iget-object p1, v0, Ldjy;->a:Ldkd;

    .line 35
    check-cast p1, Lavi;

    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object v1

    check-cast v1, Laxa;

    sget-object v2, Lavi;->q:Lavi;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lavi;->m:Laxa;

    iget v1, p1, Lavi;->a:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, p1, Lavi;->a:I

    .line 37
    sget-object p1, Lavh;->A:Lavh;

    invoke-virtual {p0, v0, p1}, Lacy;->a(Ldjy;Lavh;)V

    return-void
.end method

.method public final a(Laxj;Laxl;)V
    .locals 4

    .line 55
    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object v0

    .line 56
    sget-object v1, Laxh;->d:Laxh;

    .line 57
    invoke-virtual {v1}, Ldkd;->g()Ldjy;

    move-result-object v1

    iget-boolean v2, v1, Ldjy;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v3, v1, Ldjy;->b:Z

    :cond_0
    iget-object v2, v1, Ldjy;->a:Ldkd;

    .line 59
    check-cast v2, Laxh;

    iget p1, p1, Laxj;->d:I

    iput p1, v2, Laxh;->b:I

    iget p1, v2, Laxh;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Laxh;->a:I

    iget p2, p2, Laxl;->d:I

    iput p2, v2, Laxh;->c:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v2, Laxh;->a:I

    iget-boolean p1, v0, Ldjy;->b:Z

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v3, v0, Ldjy;->b:Z

    :cond_1
    iget-object p1, v0, Ldjy;->a:Ldkd;

    .line 61
    check-cast p1, Lavi;

    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object p2

    check-cast p2, Laxh;

    sget-object v1, Lavi;->q:Lavi;

    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lavi;->h:Laxh;

    iget p2, p1, Lavi;->a:I

    const/high16 v1, 0x400000

    or-int/2addr p2, v1

    iput p2, p1, Lavi;->a:I

    .line 63
    sget-object p1, Lavh;->u:Lavh;

    invoke-virtual {p0, v0, p1}, Lacy;->a(Ldjy;Lavh;)V

    return-void
.end method

.method public final a(Laxj;Laxl;I)V
    .locals 4

    .line 38
    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object v0

    .line 39
    sget-object v1, Laxg;->e:Laxg;

    .line 40
    invoke-virtual {v1}, Ldkd;->g()Ldjy;

    move-result-object v1

    iget-boolean v2, v1, Ldjy;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v3, v1, Ldjy;->b:Z

    :cond_0
    iget-object v2, v1, Ldjy;->a:Ldkd;

    .line 42
    check-cast v2, Laxg;

    iget p1, p1, Laxj;->d:I

    iput p1, v2, Laxg;->b:I

    iget p1, v2, Laxg;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Laxg;->a:I

    iget p2, p2, Laxl;->d:I

    iput p2, v2, Laxg;->d:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v2, Laxg;->a:I

    const/16 p1, 0x8

    if-eq p3, p1, :cond_1

    packed-switch p3, :pswitch_data_0

    .line 48
    sget-object p1, Laxf;->a:Laxf;

    goto :goto_0

    .line 43
    :pswitch_0
    sget-object p1, Laxf;->b:Laxf;

    goto :goto_0

    .line 44
    :pswitch_1
    sget-object p1, Laxf;->f:Laxf;

    goto :goto_0

    .line 45
    :pswitch_2
    sget-object p1, Laxf;->e:Laxf;

    goto :goto_0

    .line 46
    :pswitch_3
    sget-object p1, Laxf;->c:Laxf;

    goto :goto_0

    .line 47
    :cond_1
    sget-object p1, Laxf;->d:Laxf;

    .line 48
    :goto_0
    iget-boolean p2, v1, Ldjy;->b:Z

    if-eqz p2, :cond_2

    .line 49
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v3, v1, Ldjy;->b:Z

    :cond_2
    iget-object p2, v1, Ldjy;->a:Ldkd;

    .line 50
    check-cast p2, Laxg;

    iget p1, p1, Laxf;->h:I

    iput p1, p2, Laxg;->c:I

    iget p1, p2, Laxg;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p2, Laxg;->a:I

    iget-boolean p1, v0, Ldjy;->b:Z

    if-eqz p1, :cond_3

    .line 51
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v3, v0, Ldjy;->b:Z

    :cond_3
    iget-object p1, v0, Ldjy;->a:Ldkd;

    .line 52
    check-cast p1, Lavi;

    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object p2

    check-cast p2, Laxg;

    sget-object p3, Lavi;->q:Lavi;

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lavi;->i:Laxg;

    iget p2, p1, Lavi;->a:I

    const/high16 p3, 0x800000

    or-int/2addr p2, p3

    iput p2, p1, Lavi;->a:I

    .line 54
    sget-object p1, Lavh;->v:Lavh;

    invoke-virtual {p0, v0, p1}, Lacy;->a(Ldjy;Lavh;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Laxl;I)V
    .locals 4

    .line 71
    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object v0

    .line 72
    sget-object v1, Lazq;->d:Lazq;

    .line 73
    invoke-virtual {v1}, Ldkd;->g()Ldjy;

    move-result-object v1

    iget-boolean v2, v1, Ldjy;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v3, v1, Ldjy;->b:Z

    :cond_0
    iget-object v2, v1, Ldjy;->a:Ldkd;

    .line 75
    check-cast v2, Lazq;

    iget p1, p1, Laxl;->d:I

    iput p1, v2, Lazq;->c:I

    iget p1, v2, Lazq;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v2, Lazq;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Lazq;->a:I

    iput p2, v2, Lazq;->b:I

    iget-boolean p1, v0, Ldjy;->b:Z

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v3, v0, Ldjy;->b:Z

    :cond_1
    iget-object p1, v0, Ldjy;->a:Ldkd;

    .line 77
    check-cast p1, Lavi;

    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object p2

    check-cast p2, Lazq;

    sget-object v1, Lavi;->q:Lavi;

    .line 78
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lavi;->k:Lazq;

    iget p2, p1, Lavi;->a:I

    const/high16 v1, 0x2000000

    or-int/2addr p2, v1

    iput p2, p1, Lavi;->a:I

    .line 79
    sget-object p1, Lavh;->x:Lavh;

    invoke-virtual {p0, v0, p1}, Lacy;->a(Ldjy;Lavh;)V

    return-void
.end method

.method public final a(Ldjy;Lavh;)V
    .locals 4

    .line 64
    sget-object v0, Land;->y:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lacy;->a:Laqd;

    new-array p2, v1, [Ljava/lang/Object;

    .line 65
    const-string v0, "Dropping cloud restore Clearcut log event because logging is disabled."

    invoke-virtual {p1, v0, p2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Land;->B:Lccv;

    .line 66
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v2, p1, Ldjy;->b:Z

    if-eqz v2, :cond_1

    .line 67
    invoke-virtual {p1}, Ldjy;->b()V

    iput-boolean v1, p1, Ldjy;->b:Z

    :cond_1
    iget-object v1, p1, Ldjy;->a:Ldkd;

    .line 68
    check-cast v1, Lavi;

    sget-object v2, Lavi;->q:Lavi;

    iget v2, v1, Lavi;->a:I

    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    iput v2, v1, Lavi;->a:I

    iput v0, v1, Lavi;->d:I

    iget-object v0, p0, Lacy;->b:Lapm;

    .line 69
    invoke-virtual {p1}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Lavi;

    invoke-virtual {p1}, Ldhi;->b()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lapm;->a([B)Lbde;

    move-result-object p1

    iget p2, p2, Lavh;->R:I

    invoke-virtual {p1, p2}, Lbde;->a(I)V

    .line 70
    invoke-virtual {p1}, Lbde;->a()Lbun;

    return-void
.end method
