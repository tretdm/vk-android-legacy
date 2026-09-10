.class Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;)V
    .locals 0

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$1(Lcom/vkontakte/android/DialogsActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 792
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 797
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v9, -0x1

    const v8, 0x7f060060

    const/4 v3, 0x0

    const v7, 0x7f06005f

    .line 802
    if-nez p2, :cond_0

    .line 803
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const v2, 0x7f030014

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 804
    new-instance v1, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v1}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 805
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v1, v1, Lcom/vkontakte/android/DialogsActivity;->views:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 806
    invoke-static {p2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 808
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 809
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 810
    .local v0, "de":Lcom/vkontakte/android/DialogEntry;
    const v1, 0x7f06005e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Ljava/lang/String;

    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "<br/>"

    const-string v6, " "

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    const v1, 0x7f060061

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, v0, Lcom/vkontakte/android/DialogEntry;->time:I

    invoke-static {v2}, Lcom/vkontakte/android/Global;->langDateShort(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/HighlightDrawable;

    iget-boolean v2, v0, Lcom/vkontakte/android/DialogEntry;->readState:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/HighlightDrawable;->setUnread(Z)V

    .line 815
    iget v1, v0, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    packed-switch v1, :pswitch_data_0

    .line 836
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 837
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 844
    :goto_2
    const v1, 0x7f060062

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserProfile;->online:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 847
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v1, :cond_7

    .line 848
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 849
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v2, v0, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    if-eqz v2, :cond_4

    const v2, 0x7f08000b

    :goto_4
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 850
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v2, v0, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    if-eqz v2, :cond_5

    const v2, 0x7f0201c4

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 851
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v2, v0, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    if-eqz v2, :cond_6

    const v2, 0x7f0900bb

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 852
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v9, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    :goto_7
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-nez p1, :cond_8

    :goto_8
    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ui/HighlightDrawable;->setFirst(Z)V

    .line 860
    const v1, 0x7f06005c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 861
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/DialogsActivity;->access$2(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v1

    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 862
    const v1, 0x7f06005d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/DialogsActivity;->access$2(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 867
    :goto_9
    return-object p2

    .line 809
    .end local v0    # "de":Lcom/vkontakte/android/DialogEntry;
    :cond_1
    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    goto/16 :goto_0

    .restart local v0    # "de":Lcom/vkontakte/android/DialogEntry;
    :cond_2
    move v2, v4

    .line 813
    goto/16 :goto_1

    .line 817
    :pswitch_0
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/IconBgDrawable;

    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020111

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/vkontakte/android/IconBgDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 820
    :pswitch_1
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/IconBgDrawable;

    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020121

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/vkontakte/android/IconBgDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 823
    :pswitch_2
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/IconBgDrawable;

    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02011d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/vkontakte/android/IconBgDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 826
    :pswitch_3
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/IconBgDrawable;

    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020114

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/vkontakte/android/IconBgDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 829
    :pswitch_4
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/IconBgDrawable;

    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02011a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/vkontakte/android/IconBgDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 833
    :pswitch_5
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/IconBgDrawable;

    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020117

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/vkontakte/android/IconBgDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 844
    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_3

    .line 849
    :cond_4
    const v2, 0x7f08000a

    goto/16 :goto_4

    .line 850
    :cond_5
    const v2, 0x7f0201c2

    goto/16 :goto_5

    .line 851
    :cond_6
    const v2, 0x7f0900bc

    goto/16 :goto_6

    .line 854
    :cond_7
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 855
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-direct {v1, v9, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    :cond_8
    move v4, v3

    .line 858
    goto/16 :goto_8

    .line 864
    :cond_9
    const v1, 0x7f06005d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201e8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 815
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
