.class Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;

.field final synthetic val$_image:I

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$item:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;IILandroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$_image:I

    iput p3, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$item:I

    iput-object p4, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$view:Landroid/view/View;

    iput-object p5, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 2807
    :try_start_0
    iget v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$_image:I

    .line 2808
    .local v4, "image":I
    const/4 v2, 0x0

    .line 2809
    .local v2, "i":I
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;

    iget-object v9, v9, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v9

    iget v10, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$item:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v9, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    .line 2810
    .local v5, "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    if-ne v2, v4, :cond_1

    .line 2811
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$view:Landroid/view/View;

    iget v10, v5, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2829
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "image":I
    .end local v5    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_0
    :goto_1
    return-void

    .line 2814
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "image":I
    .restart local v5    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2816
    .end local v5    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_2
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;

    iget-object v9, v9, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v9

    iget v10, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$item:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v9, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v4, v9

    .line 2817
    const/4 v6, 0x0

    .local v6, "imgindex":I
    const/4 v7, 0x0

    .line 2818
    .local v7, "index":I
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;

    iget-object v9, v9, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v9

    iget v10, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$item:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v9, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 2819
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v9, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v9, :cond_4

    .line 2820
    if-ne v6, v4, :cond_3

    .line 2821
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$view:Landroid/view/View;

    const v10, 0x7f0800d4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2822
    .local v1, "av":Landroid/view/View;
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-interface {v0, v1, v9, v10}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2824
    .end local v1    # "av":Landroid/view/View;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 2826
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2828
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "image":I
    .end local v6    # "imgindex":I
    .end local v7    # "index":I
    :catch_0
    move-exception v8

    .local v8, "x":Ljava/lang/Exception;
    const-string v9, "vk"

    invoke-static {v9, v8}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
