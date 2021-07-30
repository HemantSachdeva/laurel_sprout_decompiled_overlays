.class final synthetic Larr;
.super Ljava/lang/Object;

# interfaces
.implements Laql;


# instance fields
.field private final a:Lart;


# direct methods
.method public constructor <init>(Lart;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larr;->a:Lart;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;I)V
    .locals 6

    iget-object v0, p0, Larr;->a:Lart;

    sget-object v1, Lart;->a:Lacw;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Lart;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    iget p2, v0, Lart;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v2, v0

    const-string p2, "Retrying after error trying to switch transport to %s (%d/%d retries)"

    invoke-virtual {v1, p2, p1, v2}, Laqd;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
