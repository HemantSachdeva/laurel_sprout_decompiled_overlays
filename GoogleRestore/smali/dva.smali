.class public final Ldva;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldva;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ldva;
    .locals 1

    new-instance v0, Ldva;

    .line 1
    invoke-direct {v0, p0}, Ldva;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldva;->a:Ljava/lang/String;

    return-object v0
.end method
