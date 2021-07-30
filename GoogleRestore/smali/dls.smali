.class public final Ldls;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldls;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;

.field private final c:Ldlb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldls;

    .line 1
    invoke-direct {v0}, Ldls;-><init>()V

    sput-object v0, Ldls;->a:Ldls;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldls;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ldlb;

    .line 3
    invoke-direct {v0}, Ldlb;-><init>()V

    iput-object v0, p0, Ldls;->c:Ldlb;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ldlw;
    .locals 8

    .line 4
    const-string v0, "messageType"

    invoke-static {p1, v0}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ldls;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldlw;

    if-nez v1, :cond_6

    iget-object v1, p0, Ldls;->c:Ldlb;

    .line 6
    invoke-static {p1}, Ldlx;->a(Ljava/lang/Class;)V

    iget-object v1, v1, Ldlb;->a:Ldlh;

    .line 7
    invoke-interface {v1, p1}, Ldlh;->b(Ljava/lang/Class;)Ldlg;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ldlg;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Ldkd;

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ldlx;->c:Ldne;

    .line 34
    sget-object v3, Ldjs;->a:Ldll;

    .line 35
    invoke-interface {v2}, Ldlg;->b()Ldlj;

    move-result-object v2

    .line 36
    invoke-static {v1, v3, v2}, Ldln;->a(Ldne;Ldll;Ldlj;)Ldln;

    move-result-object v1

    goto :goto_0

    .line 39
    :cond_0
    sget-object v1, Ldlx;->a:Ldne;

    .line 31
    invoke-static {}, Ldjs;->a()Ldll;

    move-result-object v3

    .line 32
    invoke-interface {v2}, Ldlg;->b()Ldlj;

    move-result-object v2

    .line 33
    invoke-static {v1, v3, v2}, Ldln;->a(Ldne;Ldll;Ldlj;)Ldln;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-class v1, Ldkd;

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-static {v2}, Ldlb;->a(Ldlg;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    sget-object v3, Ldlp;->b:Ldmt;

    .line 12
    sget-object v4, Ldkx;->b:Ldkx;

    sget-object v5, Ldlx;->c:Ldne;

    .line 13
    sget-object v6, Ldjs;->a:Ldll;

    .line 14
    sget-object v7, Ldlf;->b:Ldmg;

    .line 15
    invoke-static/range {v2 .. v7}, Ldlm;->a(Ldlg;Ldmt;Ldkx;Ldne;Ldll;Ldmg;)Ldlm;

    move-result-object v1

    goto :goto_0

    .line 16
    :cond_2
    sget-object v3, Ldlp;->b:Ldmt;

    .line 17
    sget-object v4, Ldkx;->b:Ldkx;

    sget-object v5, Ldlx;->c:Ldne;

    const/4 v6, 0x0

    .line 18
    sget-object v7, Ldlf;->b:Ldmg;

    .line 19
    invoke-static/range {v2 .. v7}, Ldlm;->a(Ldlg;Ldmt;Ldkx;Ldne;Ldll;Ldmg;)Ldlm;

    move-result-object v1

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {v2}, Ldlb;->a(Ldlg;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    sget-object v3, Ldlp;->a:Ldmt;

    .line 22
    sget-object v4, Ldkx;->a:Ldkx;

    sget-object v5, Ldlx;->a:Ldne;

    .line 23
    invoke-static {}, Ldjs;->a()Ldll;

    move-result-object v6

    .line 24
    sget-object v7, Ldlf;->a:Ldmg;

    .line 25
    invoke-static/range {v2 .. v7}, Ldlm;->a(Ldlg;Ldmt;Ldkx;Ldne;Ldll;Ldmg;)Ldlm;

    move-result-object v1

    goto :goto_0

    .line 26
    :cond_4
    sget-object v3, Ldlp;->a:Ldmt;

    .line 27
    sget-object v4, Ldkx;->a:Ldkx;

    sget-object v5, Ldlx;->b:Ldne;

    const/4 v6, 0x0

    .line 28
    sget-object v7, Ldlf;->a:Ldmg;

    .line 29
    invoke-static/range {v2 .. v7}, Ldlm;->a(Ldlg;Ldmt;Ldkx;Ldne;Ldll;Ldmg;)Ldlm;

    move-result-object v1

    .line 36
    :goto_0
    nop

    .line 37
    invoke-static {p1, v0}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-string v0, "schema"

    invoke-static {v1, v0}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldls;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 39
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldlw;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    return-object p1

    .line 29
    :cond_6
    nop

    .line 39
    :goto_1
    return-object v1
.end method

.method public final a(Ljava/lang/Object;)Ldlw;
    .locals 0

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object p1

    return-object p1
.end method
