.class final Lahz;
.super Landroid/widget/BaseAdapter;
.source "PG"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final a:Laqd;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lahx;

.field private final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RestoreChoiceAdapter"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lahz;->a:Laqd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lahx;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lahz;->b:Landroid/content/Context;

    iput-object p2, p0, Lahz;->c:Lahx;

    iput-object p3, p0, Lahz;->d:Ljava/util/List;

    return-void
.end method

.method private final a(I)Z
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lahz;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lahw;

    return p1
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lahz;->d:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lahz;->d:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lahz;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 6
    invoke-direct {p0, p1}, Lahz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lahz;->b:Landroid/content/Context;

    .line 7
    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lahz;->b:Landroid/content/Context;

    .line 8
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0025

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lahy;

    invoke-direct {p3}, Lahy;-><init>()V

    const v1, 0x7f0a0077

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lahy;->a:Landroid/widget/TextView;

    const v1, 0x7f0a0076

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lahy;->b:Landroid/widget/TextView;

    const v1, 0x7f0a00c5

    .line 11
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p3, Lahy;->c:Landroid/widget/CheckBox;

    iget-object v1, p3, Lahy;->c:Landroid/widget/CheckBox;

    .line 12
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p3, Lahy;->c:Landroid/widget/CheckBox;

    .line 13
    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a01d0

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p3, Lahy;->e:Landroid/view/View;

    .line 15
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lahy;

    .line 17
    :goto_0
    invoke-virtual {p0, p1}, Lahz;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 18
    instance-of v1, p1, Lahv;

    if-eqz v1, :cond_5

    .line 19
    check-cast p1, Lahv;

    iput-object p1, p3, Lahy;->d:Lahv;

    .line 20
    invoke-virtual {p1}, Lahv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 21
    iget-object v1, p3, Lahy;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 22
    :cond_2
    iget-object v1, p3, Lahy;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v1, p3, Lahy;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lahv;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_1
    iget-object v1, p3, Lahy;->a:Landroid/widget/TextView;

    iget-object v3, p1, Lahv;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v1, p3, Lahy;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lahv;->b()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 26
    iget-object v1, p3, Lahy;->c:Landroid/widget/CheckBox;

    iget-boolean v3, p1, Lahv;->f:Z

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eq v5, v3, :cond_3

    const/4 v3, 0x4

    goto :goto_2

    .line 31
    :cond_3
    const/4 v3, 0x0

    .line 26
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 27
    iget-object v1, p3, Lahy;->c:Landroid/widget/CheckBox;

    iget-boolean v3, p1, Lahv;->g:Z

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 28
    iget-object v1, p3, Lahy;->c:Landroid/widget/CheckBox;

    iget-boolean v3, p1, Lahv;->g:Z

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 29
    iget-object v1, p3, Lahy;->c:Landroid/widget/CheckBox;

    iget-object v3, p3, Lahy;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v1, p1, Lahv;->a:I

    if-ne v1, v5, :cond_4

    .line 30
    iget-object v1, p3, Lahy;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 31
    :cond_4
    iget-object v0, p3, Lahy;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :goto_3
    iget-boolean p1, p1, Lahv;->i:Z

    if-eqz p1, :cond_6

    .line 32
    iget-object p1, p3, Lahy;->e:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object p1, p3, Lahy;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_4

    .line 23
    :cond_5
    sget-object p1, Lahz;->a:Laqd;

    new-array p3, v0, [Ljava/lang/Object;

    .line 34
    const-string v0, "Unexpected item in the restore choice list"

    invoke-virtual {p1, v0, p3}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_6
    :goto_4
    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 36
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lahy;

    .line 37
    iget-object v0, p1, Lahy;->d:Lahv;

    invoke-virtual {v0, p2}, Lahv;->a(Z)V

    .line 38
    invoke-virtual {p0}, Lahz;->notifyDataSetChanged()V

    iget-object p2, p0, Lahz;->c:Lahx;

    .line 39
    iget-object p1, p1, Lahy;->d:Lahv;

    check-cast p2, Laid;

    iget-object p2, p2, Laid;->a:Laim;

    iget-boolean v0, p1, Lahv;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Laim;->Z:Ljava/util/Map;

    iget v1, p1, Lahv;->a:I

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lahv;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p1}, Lahv;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget p1, p1, Lahv;->a:I

    if-ne p1, v1, :cond_3

    iget-object p1, p2, Laim;->aa:Ljava/util/Set;

    .line 43
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p2}, Laim;->P()Lail;

    move-result-object p1

    invoke-interface {p1}, Lail;->s()V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2}, Laim;->P()Lail;

    move-result-object p1

    iget-object v0, p2, Laim;->aa:Ljava/util/Set;

    invoke-interface {p1, v0}, Lail;->a(Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    iget p1, p1, Lahv;->a:I

    if-ne p1, v1, :cond_3

    .line 42
    invoke-virtual {p2}, Laim;->P()Lail;

    move-result-object p1

    invoke-interface {p1}, Lail;->r()V

    .line 46
    :cond_3
    :goto_0
    invoke-virtual {p2}, Laim;->e()V

    .line 47
    invoke-virtual {p2}, Laim;->O()V

    return-void
.end method
