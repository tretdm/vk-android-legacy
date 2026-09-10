.class Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

.field private final synthetic val$_image:I

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$_image:I

    iput-object p3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 1951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 1952
    iget v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$_image:I

    .line 1954
    .local v2, "image":I
    if-nez v2, :cond_0

    .line 1955
    :try_start_0
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f09014f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1956
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f09014f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1975
    :goto_0
    return-void

    .line 1959
    :cond_0
    if-ne v2, v7, :cond_1

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1960
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0901e1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1974
    :catch_0
    move-exception v6

    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1963
    .end local v6    # "x":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 1964
    :cond_2
    const/4 v3, 0x0

    .local v3, "imgindex":I
    const/4 v4, 0x0

    .line 1965
    .local v4, "index":I
    add-int/lit8 v7, v2, -0x1

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v8

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkontakte/android/NewsEntry;->getImageCount()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1966
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v7

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->getImageAttachment(I)Lcom/vkontakte/android/ImageAttachment;

    move-result-object v0

    .line 1967
    .local v0, "att":Lcom/vkontakte/android/ImageAttachment;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v7

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->getImageAttachView(I)Landroid/view/View;

    move-result-object v1

    .line 1968
    .local v1, "attView":Landroid/view/View;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-interface {v0, v1, v7, v8}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 1971
    .end local v0    # "att":Lcom/vkontakte/android/ImageAttachment;
    .end local v1    # "attView":Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/NewsEntry;->getImageCount()I

    move-result v3

    .line 1972
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$8(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    const v8, 0x7f09015a

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1973
    .local v5, "likes":Landroid/widget/LinearLayout;
    sub-int v7, v2, v3

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
