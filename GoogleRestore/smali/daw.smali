.class final synthetic Ldaw;
.super Ljava/lang/Object;

# interfaces
.implements Ldft;


# instance fields
.field private final a:Ldbb;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ldbb;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldaw;->a:Ldbb;

    iput-object p2, p0, Ldaw;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Ldaw;->a:Ldbb;

    iget-object v1, p0, Ldaw;->b:Landroid/content/Context;

    new-instance v2, Ldgt;

    invoke-virtual {v0}, Ldbb;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Ldbb;->c:Ldbq;

    const-class v4, Ldde;

    invoke-virtual {v0, v4}, Ldbf;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldde;

    invoke-direct {v2, v1, v3}, Ldgt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v2
.end method
