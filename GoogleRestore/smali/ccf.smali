.class final synthetic Lccf;
.super Ljava/lang/Object;

# interfaces
.implements Lccd;


# instance fields
.field private final a:Lcch;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcch;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccf;->a:Lcch;

    iput-object p2, p0, Lccf;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lccf;->a:Lcch;

    iget-object v1, p0, Lccf;->b:Ljava/lang/String;

    iget-object v0, v0, Lcch;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Lbqa;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
