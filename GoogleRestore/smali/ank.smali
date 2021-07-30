.class final synthetic Lank;
.super Ljava/lang/Object;

# interfaces
.implements Lbpd;


# static fields
.field static final a:Lbpd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lank;

    invoke-direct {v0}, Lank;-><init>()V

    sput-object v0, Lank;->a:Lbpd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    sget-object p1, Lann;->a:Lacw;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Phenotype flags updated successfully."

    invoke-virtual {p1, v1, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
