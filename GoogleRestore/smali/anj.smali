.class final synthetic Lanj;
.super Ljava/lang/Object;

# interfaces
.implements Lbpa;


# instance fields
.field private final a:Lann;


# direct methods
.method public constructor <init>(Lann;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanj;->a:Lann;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lanj;->a:Lann;

    sget-object v1, Lann;->a:Lacw;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed committing Phenotype flags."

    invoke-virtual {v1, v3, p1, v2}, Laqd;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p1, 0x3

    iput p1, v0, Lann;->c:I

    return-void
.end method
