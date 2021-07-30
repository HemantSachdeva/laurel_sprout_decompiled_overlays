.class public final Lbrk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;


# direct methods
.method public constructor <init>(Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbrk;->a:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbrk;->b()Lbxd;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbxd;
    .locals 9

    iget-object v0, p0, Lbrk;->a:Leip;

    .line 1
    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy;

    iget-object v0, v0, Lbsy;->h:Lcqu;

    new-instance v1, Lbxc;

    .line 2
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbxc;-><init>([B)V

    const/4 v2, 0x1

    iput v2, v1, Lbxc;->e:I

    .line 3
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lbxc;->a:Ljava/lang/Boolean;

    .line 4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    iput-object v3, v1, Lbxc;->b:Ljava/lang/Boolean;

    .line 6
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lbxc;->c:Ljava/lang/Integer;

    sget-object v3, Lcqb;->a:Lcqb;

    iput-object v3, v1, Lbxc;->d:Lcqu;

    iget v3, v1, Lbxc;->e:I

    if-eq v2, v3, :cond_0

    const-string v2, " enablement"

    goto :goto_0

    .line 16
    :cond_0
    const-string v2, ""

    .line 6
    :goto_0
    iget-object v3, v1, Lbxc;->a:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    .line 7
    const-string v3, " monitorActivities"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v3, v1, Lbxc;->b:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    .line 8
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " useAnimator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v3, v1, Lbxc;->c:Ljava/lang/Integer;

    if-nez v3, :cond_3

    .line 9
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " rateLimitPerSecond"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 16
    :cond_4
    new-instance v1, Ljava/lang/String;

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v8, Lbxd;

    iget v3, v1, Lbxc;->e:I

    iget-object v2, v1, Lbxc;->a:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v2, v1, Lbxc;->b:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v2, v1, Lbxc;->c:Ljava/lang/Integer;

    .line 14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v1, Lbxc;->d:Lcqu;

    .line 15
    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lbxd;-><init>(IZZILcqu;)V

    .line 16
    invoke-virtual {v0, v8}, Lcqu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8
.end method
