.class public Lcom/vkontakte/android/FriendSelectActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "FriendSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field layout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, "res":Landroid/content/Intent;
    const-string v2, "profile"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/FriendSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendSelectActivity;->finish()V

    .line 65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 19
    .local v4, "sv":Landroid/widget/ScrollView;
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 20
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/FriendSelectActivity;->layout:Landroid/widget/LinearLayout;

    .line 21
    iget-object v6, p0, Lcom/vkontakte/android/FriendSelectActivity;->layout:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 22
    iget-object v6, p0, Lcom/vkontakte/android/FriendSelectActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 23
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/FriendSelectActivity;->setContentView(Landroid/view/View;)V

    .line 24
    new-instance v3, Lcom/vkontakte/android/ImageLoader;

    invoke-direct {v3}, Lcom/vkontakte/android/ImageLoader;-><init>()V

    .line 25
    .local v3, "ldr":Lcom/vkontakte/android/ImageLoader;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 37
    invoke-virtual {v3}, Lcom/vkontakte/android/ImageLoader;->start()V

    .line 57
    return-void

    .line 26
    :cond_0
    const v6, 0x7f030016

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 27
    .local v1, "item":Landroid/view/View;
    if-nez v0, :cond_1

    const v6, 0x7f020091

    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    const v6, 0x7f060066

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 29
    .local v2, "iv":Landroid/widget/ImageView;
    sget-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 30
    const v6, 0x7f060068

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 31
    .local v5, "tv":Landroid/widget/TextView;
    sget-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v2, v6, v7, v8}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 33
    sget-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v6, p0, Lcom/vkontakte/android/FriendSelectActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_1
    const v6, 0x7f020090

    goto :goto_1
.end method
