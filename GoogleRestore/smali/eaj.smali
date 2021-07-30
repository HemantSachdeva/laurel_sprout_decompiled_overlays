.class final Leaj;
.super Ldxe;
.source "PG"


# instance fields
.field private final a:Ldyv;


# direct methods
.method public constructor <init>(Ldyv;)V
    .locals 0

    invoke-direct {p0}, Ldxe;-><init>()V

    iput-object p1, p0, Leaj;->a:Ldyv;

    return-void
.end method


# virtual methods
.method public final a()Ldwz;
    .locals 1

    iget-object v0, p0, Leaj;->a:Ldyv;

    .line 1
    invoke-static {v0}, Ldwz;->a(Ldyv;)Ldwz;

    move-result-object v0

    return-object v0
.end method
