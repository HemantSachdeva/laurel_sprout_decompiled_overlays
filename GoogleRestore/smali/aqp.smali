.class public final Laqp;
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

    const-string v3, "UserInteractionLogger"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laqp;->a:Laqd;

    return-void
.end method

.method public constructor <init>(Lapm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqp;->b:Lapm;

    return-void
.end method

.method public static a(Landroid/content/Context;)Laqp;
    .locals 2

    new-instance v0, Lapm;

    .line 18
    const-string v1, "ANDROID_BACKUP"

    invoke-direct {v0, p0, v1}, Lapm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Laqp;

    .line 19
    sget v1, Lbqe;->a:I

    invoke-direct {p0, v0}, Laqp;-><init>(Lapm;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lbcs;Lbcu;Z)V
    .locals 7

    .line 2
    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object v0

    .line 3
    sget-object v1, Lbcv;->f:Lbcv;

    .line 4
    invoke-virtual {v1}, Ldkd;->g()Ldjy;

    move-result-object v1

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-boolean v4, v1, Ldjy;->b:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v5, v1, Ldjy;->b:Z

    :cond_0
    iget-object v4, v1, Ldjy;->a:Ldkd;

    .line 7
    check-cast v4, Lbcv;

    iget v6, v4, Lbcv;->a:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v4, Lbcv;->a:I

    iput-wide v2, v4, Lbcv;->b:J

    iget p1, p1, Lbcs;->R:I

    iput p1, v4, Lbcv;->c:I

    or-int/lit8 p1, v6, 0x2

    iput p1, v4, Lbcv;->a:I

    iget p2, p2, Lbcu;->q:I

    iput p2, v4, Lbcv;->d:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v4, Lbcv;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v4, Lbcv;->a:I

    iput-boolean p3, v4, Lbcv;->e:Z

    iget-boolean p1, v0, Ldjy;->b:Z

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v5, v0, Ldjy;->b:Z

    :cond_1
    iget-object p1, v0, Ldjy;->a:Ldkd;

    .line 9
    check-cast p1, Lavi;

    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object p2

    check-cast p2, Lbcv;

    sget-object p3, Lavi;->q:Lavi;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lavi;->p:Lbcv;

    iget p2, p1, Lavi;->b:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lavi;->b:I

    sget-object p1, Laqp;->a:Laqd;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    sget-object p1, Lavh;->K:Lavh;

    .line 13
    sget-object p2, Land;->B:Lccv;

    invoke-virtual {p2}, Lccv;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-boolean p3, v0, Ldjy;->b:Z

    if-eqz p3, :cond_2

    .line 14
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v5, v0, Ldjy;->b:Z

    :cond_2
    iget-object p3, v0, Ldjy;->a:Ldkd;

    .line 15
    check-cast p3, Lavi;

    iget v1, p3, Lavi;->a:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p3, Lavi;->a:I

    iput p2, p3, Lavi;->d:I

    iget-object p2, p0, Laqp;->b:Lapm;

    .line 16
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p3

    check-cast p3, Lavi;

    invoke-virtual {p3}, Ldhi;->b()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Lapm;->a([B)Lbde;

    move-result-object p2

    iget p1, p1, Lavh;->R:I

    invoke-virtual {p2, p1}, Lbde;->a(I)V

    .line 17
    invoke-virtual {p2}, Lbde;->a()Lbun;

    return-void
.end method
