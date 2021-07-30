.class public final Ldwh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldva;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "remote-addr"

    invoke-static {v0}, Ldva;->a(Ljava/lang/String;)Ldva;

    move-result-object v0

    sput-object v0, Ldwh;->a:Ldva;

    .line 2
    const-string v0, "local-addr"

    invoke-static {v0}, Ldva;->a(Ljava/lang/String;)Ldva;

    .line 3
    const-string v0, "ssl-session"

    invoke-static {v0}, Ldva;->a(Ljava/lang/String;)Ldva;

    return-void
.end method
