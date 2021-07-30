.class final Leew;
.super Ldxe;
.source "PG"


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field private final b:Ldwz;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    iput-object p1, p0, Leew;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ldxe;-><init>()V

    .line 1
    sget-object v0, Ldyv;->h:Ldyv;

    .line 2
    const-string v1, "Panic! This is a bug!"

    invoke-virtual {v0, v1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ldwz;->b(Ldyv;)Ldwz;

    move-result-object p1

    iput-object p1, p0, Leew;->b:Ldwz;

    return-void
.end method


# virtual methods
.method public final a()Ldwz;
    .locals 1

    iget-object v0, p0, Leew;->b:Ldwz;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-class v0, Leew;

    .line 4
    invoke-static {v0}, Lcqt;->a(Ljava/lang/Class;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Leew;->b:Ldwz;

    .line 5
    const-string v2, "panicPickResult"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
