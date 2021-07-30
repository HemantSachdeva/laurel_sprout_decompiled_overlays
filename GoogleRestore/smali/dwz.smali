.class public final Ldwz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldwz;


# instance fields
.field public final b:Ldxd;

.field public final c:Ldyv;

.field public final d:Z

.field private final e:Ldxq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ldwz;

    .line 1
    sget-object v1, Ldyv;->b:Ldyv;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Ldwz;-><init>(Ldxd;Ldyv;Z)V

    sput-object v0, Ldwz;->a:Ldwz;

    return-void
.end method

.method private constructor <init>(Ldxd;Ldyv;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwz;->b:Ldxd;

    const/4 p1, 0x0

    iput-object p1, p0, Ldwz;->e:Ldxq;

    .line 2
    const-string p1, "status"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Ldwz;->c:Ldyv;

    iput-boolean p3, p0, Ldwz;->d:Z

    return-void
.end method

.method public static a(Ldxd;)Ldwz;
    .locals 3

    new-instance v0, Ldwz;

    .line 19
    sget-object v1, Ldyv;->b:Ldyv;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ldwz;-><init>(Ldxd;Ldyv;Z)V

    return-object v0
.end method

.method public static a(Ldyv;)Ldwz;
    .locals 3

    .line 17
    invoke-virtual {p0}, Ldyv;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error status shouldn\'t be OK"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    new-instance v0, Ldwz;

    .line 18
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Ldwz;-><init>(Ldxd;Ldyv;Z)V

    return-object v0
.end method

.method public static b(Ldyv;)Ldwz;
    .locals 3

    .line 15
    invoke-virtual {p0}, Ldyv;->a()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "drop status shouldn\'t be OK"

    invoke-static {v0, v2}, Lcrj;->a(ZLjava/lang/Object;)V

    new-instance v0, Ldwz;

    .line 16
    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Ldwz;-><init>(Ldxd;Ldyv;Z)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 3
    instance-of v0, p1, Ldwz;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    check-cast p1, Ldwz;

    iget-object v0, p0, Ldwz;->b:Ldxd;

    .line 5
    iget-object v2, p1, Ldwz;->b:Ldxd;

    invoke-static {v0, v2}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldwz;->c:Ldyv;

    iget-object v2, p1, Ldwz;->c:Ldyv;

    invoke-static {v0, v2}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Ldwz;->e:Ldxq;

    .line 6
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldwz;->d:Z

    iget-boolean p1, p1, Ldwz;->d:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ldwz;->b:Ldxd;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ldwz;->c:Ldyv;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-boolean v1, p0, Ldwz;->d:Z

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 9
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Ldwz;->b:Ldxd;

    .line 10
    const-string v2, "subchannel"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    const-string v1, "streamTracerFactory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldwz;->c:Ldyv;

    .line 12
    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Ldwz;->d:Z

    .line 13
    const-string v2, "drop"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Z)V

    .line 14
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
