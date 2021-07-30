.class public final Ldvt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldvu;


# static fields
.field public static final a:Ldvu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldvt;

    invoke-direct {v0}, Ldvt;-><init>()V

    sput-object v0, Ldvt;->a:Ldvu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "identity"

    return-object v0
.end method
