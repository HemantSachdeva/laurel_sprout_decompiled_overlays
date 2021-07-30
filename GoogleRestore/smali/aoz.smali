.class public final Laoz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final c:Lacw;


# instance fields
.field public a:I

.field public b:I

.field private final d:Lapm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AppPickerHostLogger"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laoz;->c:Lacw;

    return-void
.end method

.method public constructor <init>(Lapm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laoz;->d:Lapm;

    return-void
.end method


# virtual methods
.method public final a(Lavi;Lavh;)V
    .locals 3

    .line 12
    sget-object v0, Land;->ah:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Laoz;->c:Lacw;

    new-array p2, v1, [Ljava/lang/Object;

    .line 13
    const-string v0, "Logging is disabled."

    invoke-virtual {p1, v0, p2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Laoz;->c:Lacw;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const/4 v1, 0x1

    aput-object p1, v2, v1

    .line 14
    const-string v1, "Logging to Clearcut eventCode: %s, event: %s"

    invoke-virtual {v0, v1, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Laoz;->d:Lapm;

    .line 15
    invoke-virtual {p1}, Ldhi;->b()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lapm;->a([B)Lbde;

    move-result-object p1

    iget p2, p2, Lavh;->R:I

    invoke-virtual {p1, p2}, Lbde;->a(I)V

    .line 16
    invoke-virtual {p1}, Lbde;->a()Lbun;

    return-void
.end method

.method public final a(Lavk;)V
    .locals 4

    .line 2
    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object v0

    .line 3
    sget-object v1, Lavl;->f:Lavl;

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
    check-cast v2, Lavl;

    iget p1, p1, Lavk;->g:I

    iput p1, v2, Lavl;->b:I

    iget p1, v2, Lavl;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Lavl;->a:I

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

    check-cast v1, Lavl;

    sget-object v2, Lavi;->q:Lavi;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lavi;->o:Lavl;

    iget v1, p1, Lavi;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p1, Lavi;->b:I

    .line 10
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Lavi;

    .line 11
    sget-object v0, Lavh;->J:Lavh;

    invoke-virtual {p0, p1, v0}, Laoz;->a(Lavi;Lavh;)V

    return-void
.end method
