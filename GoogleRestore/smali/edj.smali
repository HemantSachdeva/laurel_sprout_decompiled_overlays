.class public final Ledj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldva;

.field public static final b:Ldva;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "io.grpc.internal.GrpcAttributes.securityLevel"

    invoke-static {v0}, Ldva;->a(Ljava/lang/String;)Ldva;

    move-result-object v0

    sput-object v0, Ledj;->a:Ldva;

    .line 2
    const-string v0, "io.grpc.internal.GrpcAttributes.clientEagAttrs"

    invoke-static {v0}, Ldva;->a(Ljava/lang/String;)Ldva;

    move-result-object v0

    sput-object v0, Ledj;->b:Ldva;

    return-void
.end method
