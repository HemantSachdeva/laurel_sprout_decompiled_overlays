.class public final Ldtc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcrm;


# static fields
.field private static final a:Ldtc;


# instance fields
.field private final b:Lcrm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldtc;

    .line 1
    invoke-direct {v0}, Ldtc;-><init>()V

    sput-object v0, Ldtc;->a:Ldtc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Ldte;

    invoke-direct {v0}, Ldte;-><init>()V

    invoke-static {v0}, Lcrq;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {v0}, Lcrq;->a(Lcrm;)Lcrm;

    move-result-object v0

    iput-object v0, p0, Ldtc;->b:Lcrm;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Ldtc;->a:Ldtc;

    .line 4
    invoke-virtual {v0}, Ldtc;->d()Ldtd;

    move-result-object v0

    invoke-interface {v0}, Ldtd;->a()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Ldtc;->a:Ldtc;

    .line 5
    invoke-virtual {v0}, Ldtc;->d()Ldtd;

    move-result-object v0

    invoke-interface {v0}, Ldtd;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldtc;->d()Ldtd;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ldtd;
    .locals 1

    iget-object v0, p0, Ldtc;->b:Lcrm;

    .line 6
    invoke-interface {v0}, Lcrm;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtd;

    return-object v0
.end method
