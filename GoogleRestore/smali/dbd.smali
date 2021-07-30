.class public final Ldbd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lbjj;->a(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ApplicationId must be set."

    invoke-static {v0, v1}, Lbir;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Ldbd;->b:Ljava/lang/String;

    iput-object p2, p0, Ldbd;->a:Ljava/lang/String;

    iput-object p3, p0, Ldbd;->e:Ljava/lang/String;

    iput-object p4, p0, Ldbd;->f:Ljava/lang/String;

    iput-object p5, p0, Ldbd;->c:Ljava/lang/String;

    iput-object p6, p0, Ldbd;->g:Ljava/lang/String;

    iput-object p7, p0, Ldbd;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 2
    instance-of v0, p1, Ldbd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    check-cast p1, Ldbd;

    iget-object v0, p0, Ldbd;->b:Ljava/lang/String;

    .line 4
    iget-object v2, p1, Ldbd;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldbd;->a:Ljava/lang/String;

    iget-object v2, p1, Ldbd;->a:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldbd;->e:Ljava/lang/String;

    iget-object v2, p1, Ldbd;->e:Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldbd;->f:Ljava/lang/String;

    iget-object v2, p1, Ldbd;->f:Ljava/lang/String;

    .line 7
    invoke-static {v0, v2}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldbd;->c:Ljava/lang/String;

    iget-object v2, p1, Ldbd;->c:Ljava/lang/String;

    .line 8
    invoke-static {v0, v2}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldbd;->g:Ljava/lang/String;

    iget-object v2, p1, Ldbd;->g:Ljava/lang/String;

    .line 9
    invoke-static {v0, v2}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldbd;->d:Ljava/lang/String;

    iget-object p1, p1, Ldbd;->d:Ljava/lang/String;

    .line 10
    invoke-static {v0, p1}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ldbd;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ldbd;->a:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Ldbd;->e:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Ldbd;->f:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Ldbd;->c:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Ldbd;->g:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Ldbd;->d:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 12
    invoke-static {p0}, Lbir;->b(Ljava/lang/Object;)Lbiq;

    move-result-object v0

    iget-object v1, p0, Ldbd;->b:Ljava/lang/String;

    .line 13
    const-string v2, "applicationId"

    invoke-virtual {v0, v2, v1}, Lbiq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldbd;->a:Ljava/lang/String;

    .line 14
    const-string v2, "apiKey"

    invoke-virtual {v0, v2, v1}, Lbiq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldbd;->e:Ljava/lang/String;

    .line 15
    const-string v2, "databaseUrl"

    invoke-virtual {v0, v2, v1}, Lbiq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldbd;->c:Ljava/lang/String;

    .line 16
    const-string v2, "gcmSenderId"

    invoke-virtual {v0, v2, v1}, Lbiq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldbd;->g:Ljava/lang/String;

    .line 17
    const-string v2, "storageBucket"

    invoke-virtual {v0, v2, v1}, Lbiq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldbd;->d:Ljava/lang/String;

    .line 18
    const-string v2, "projectId"

    invoke-virtual {v0, v2, v1}, Lbiq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0}, Lbiq;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
