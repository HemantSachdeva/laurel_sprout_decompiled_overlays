.class final synthetic Laol;
.super Ljava/lang/Object;

# interfaces
.implements Lcrm;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laol;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Laol;->a:Landroid/content/Context;

    sget v1, Laom;->a:I

    new-instance v1, Lbcy;

    invoke-direct {v1, v0}, Lbcy;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
