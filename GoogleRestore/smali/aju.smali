.class final synthetic Laju;
.super Ljava/lang/Object;

# interfaces
.implements Lbpa;


# instance fields
.field private final a:Lajw;

.field private final b:I


# direct methods
.method public constructor <init>(Lajw;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laju;->a:Lajw;

    iput p2, p0, Laju;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Laju;->a:Lajw;

    iget v1, p0, Laju;->b:I

    iget v2, v0, Lajw;->a:I

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lajw;->c:Lbpa;

    invoke-interface {v0, p1}, Lbpa;->a(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v2, v0, Lajw;->d:Lbpa;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lbpa;->a(Ljava/lang/Exception;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lajw;->a(I)V

    return-void
.end method
