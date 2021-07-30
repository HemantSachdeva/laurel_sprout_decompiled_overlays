.class public final Lblm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final a:Lblm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lblm;

    invoke-direct {v0}, Lblm;-><init>()V

    sput-object v0, Lblm;->a:Lblm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method
