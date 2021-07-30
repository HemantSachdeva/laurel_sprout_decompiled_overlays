.class final synthetic Lbuu;
.super Ljava/lang/Object;

# interfaces
.implements Lczc;


# instance fields
.field private final a:Lbuw;

.field private final b:Leiw;


# direct methods
.method public constructor <init>(Lbuw;Leiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbuu;->a:Lbuw;

    iput-object p2, p0, Lbuu;->b:Leiw;

    return-void
.end method


# virtual methods
.method public final a()Lczu;
    .locals 3

    iget-object v0, p0, Lbuu;->a:Lbuw;

    iget-object v1, p0, Lbuu;->b:Leiw;

    new-instance v2, Lbuv;

    invoke-direct {v2, v0, v1}, Lbuv;-><init>(Lbuw;Leiw;)V

    iget-object v0, v0, Lbuw;->b:Lczw;

    invoke-static {v2, v0}, Ldab;->a(Lczc;Ljava/util/concurrent/Executor;)Lczu;

    move-result-object v0

    return-object v0
.end method
