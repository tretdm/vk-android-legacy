.class Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PostViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PostViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostCommentsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 912
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)V
    .locals 0

    .prologue
    .line 912
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)Lcom/vkontakte/android/PostViewActivity;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 920
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 925
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v9, 0x7f06016a

    const/16 v8, 0x8

    const/4 v7, 0x0

    const v6, 0x7f0600a9

    const v5, 0x7f060169

    .line 930
    if-nez p2, :cond_0

    .line 931
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const v3, 0x7f030043

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 932
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 933
    invoke-static {p2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 934
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$4(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 935
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter$1;-><init>(Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 944
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 945
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    .line 946
    .local v0, "comment":Lcom/vkontakte/android/NewsComment;
    const v2, 0x7f060039

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    const v2, 0x7f060038

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v1, v0, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 949
    .local v1, "info":Ljava/lang/String;
    iget-object v2, v0, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 950
    :cond_1
    const v2, 0x7f06003b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    iget v2, v0, Lcom/vkontakte/android/NewsComment;->numLikes:I

    if-lez v2, :cond_2

    .line 953
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 954
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 955
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/vkontakte/android/NewsComment;->numLikes:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 962
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 965
    :goto_1
    return-object p2

    .line 957
    :cond_2
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 958
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 964
    :cond_3
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0201e8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
