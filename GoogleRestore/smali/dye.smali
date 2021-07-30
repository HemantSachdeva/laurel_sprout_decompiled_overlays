.class public final Ldye;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ldvb;

.field public final c:Ldya;


# direct methods
.method public constructor <init>(Ljava/util/List;Ldvb;Ldya;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ldye;->a:Ljava/util/List;

    .line 2
    const-string p1, "attributes"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Ldye;->b:Ldvb;

    iput-object p3, p0, Ldye;->c:Ldya;

    return-void
.end method

.method public static a()Ldyd;
    .locals 1

    new-instance v0, Ldyd;

    .line 9
    invoke-direct {v0}, Ldyd;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 3
    instance-of v0, p1, Ldye;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    check-cast p1, Ldye;

    iget-object v0, p0, Ldye;->a:Ljava/util/List;

    .line 5
    iget-object v2, p1, Ldye;->a:Ljava/util/List;

    invoke-static {v0, v2}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldye;->b:Ldvb;

    iget-object v2, p1, Ldye;->b:Ldvb;

    .line 6
    invoke-static {v0, v2}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldye;->c:Ldya;

    iget-object p1, p1, Ldye;->c:Ldya;

    .line 7
    invoke-static {v0, p1}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ldye;->a:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ldye;->b:Ldvb;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Ldye;->c:Ldya;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 10
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Ldye;->a:Ljava/util/List;

    .line 11
    const-string v2, "addresses"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldye;->b:Ldvb;

    .line 12
    const-string v2, "attributes"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldye;->c:Ldya;

    .line 13
    const-string v2, "serviceConfig"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
