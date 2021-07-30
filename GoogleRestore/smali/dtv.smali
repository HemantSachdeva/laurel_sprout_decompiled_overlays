.class public final Ldtv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcrm;


# static fields
.field public static final a:Ldtv;


# instance fields
.field private final b:Lcrm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldtv;

    .line 1
    invoke-direct {v0}, Ldtv;-><init>()V

    sput-object v0, Ldtv;->a:Ldtv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Ldtx;

    invoke-direct {v0}, Ldtx;-><init>()V

    invoke-static {v0}, Lcrq;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {v0}, Lcrq;->a(Lcrm;)Lcrm;

    move-result-object v0

    iput-object v0, p0, Ldtv;->b:Lcrm;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Ldtv;->a:Ldtv;

    .line 4
    invoke-virtual {v0}, Ldtv;->e()Ldtw;

    move-result-object v0

    invoke-interface {v0}, Ldtw;->a()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Ldtv;->a:Ldtv;

    .line 5
    invoke-virtual {v0}, Ldtv;->e()Ldtw;

    move-result-object v0

    invoke-interface {v0}, Ldtw;->b()Z

    move-result v0

    return v0
.end method

.method public static d()J
    .locals 2

    sget-object v0, Ldtv;->a:Ldtv;

    .line 7
    invoke-virtual {v0}, Ldtv;->e()Ldtw;

    move-result-object v0

    invoke-interface {v0}, Ldtw;->i()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldtv;->e()Ldtw;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ldtw;
    .locals 1

    iget-object v0, p0, Ldtv;->b:Lcrm;

    .line 6
    invoke-interface {v0}, Lcrm;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtw;

    return-object v0
.end method
