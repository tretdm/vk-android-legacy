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

.field private final synthetic val$_image:I

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$item:I

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;IILandroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$_image:I

    iput p3, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$item:I

    iput-object p4, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$view:Landroid/view/View;

    iput-object p5, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 1991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1994
    :try_start_0
    iget v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$_image:I

    .line 1995
    .local v3, "image":I
    const/4 v2, 0x0

    .line 1996
    .local v2, "i":I
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$item:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v7, v7, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2003
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$item:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v7, v7, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v3, v7

    .line 2004
    const/4 v5, 0x0

    .local v5, "imgindex":I
    const/4 v6, 0x0

    .line 2005
    .local v6, "index":I
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->access$1(Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$item:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v7, v7, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2048
    .end local v2    # "i":I
    .end local v3    # "image":I
    .end local v5    # "imgindex":I
    .end local v6    # "index":I
    :goto_2
    return-void

    .line 1996
    .restart local v2    # "i":I
    .restart local v3    # "image":I
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    .line 1997
    .local v4, "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    if-ne v2, v3, :cond_1

    .line 1998
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$view:Landroid/view/View;

    iget v8, v4, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 2047
    .end local v2    # "i":I
    .end local v3    # "image":I
    .end local v4    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :catch_0
    move-exception v7

    goto :goto_2

    .line 2001
    .restart local v2    # "i":I
    .restart local v3    # "image":I
    .restart local v4    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2005
    .end local v4    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    .restart local v5    # "imgindex":I
    .restart local v6    # "index":I
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Attachment;

    .line 2006
    .local v1, "att":Lcom/vkontakte/android/Attachment;
    instance-of v7, v1, Lcom/vkontakte/android/AlbumAttachment;

    if-eqz v7, :cond_5

    .line 2007
    if-ne v5, v3, :cond_3

    .line 2008
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f0800cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f080013

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2009
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f0800cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f080013

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v7}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animateAlpha()V

    goto :goto_2

    .line 2012
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 2045
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2013
    :cond_5
    instance-of v7, v1, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v7, :cond_7

    .line 2014
    if-ne v5, v3, :cond_6

    .line 2015
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f0800cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2016
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f0800cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v7}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animateAlpha()V

    goto/16 :goto_2

    .line 2019
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 2020
    goto :goto_3

    :cond_7
    instance-of v7, v1, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v7, :cond_9

    .line 2021
    if-ne v5, v3, :cond_8

    .line 2022
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f0800cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/VideoAttachView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 2025
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 2026
    goto :goto_3

    :cond_9
    instance-of v7, v1, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v7, :cond_b

    .line 2027
    if-ne v5, v3, :cond_a

    .line 2028
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f0800cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 2031
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 2032
    goto :goto_3

    :cond_b
    instance-of v7, v1, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v7, :cond_d

    move-object v0, v1

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    move-object v7, v0

    iget-object v7, v7, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v7, :cond_d

    move-object v0, v1

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    move-object v7, v0

    iget-object v7, v7, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 2033
    if-ne v5, v3, :cond_c

    .line 2034
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f0800cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const v8, 0x7f08004c

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 2037
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 2038
    goto/16 :goto_3

    :cond_d
    instance-of v7, v1, Lcom/vkontakte/android/StickerAttachment;

    if-eqz v7, :cond_4

    .line 2039
    if-ne v5, v3, :cond_e

    .line 2040
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$view:Landroid/view/View;

    const v8, 0x7f0800cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2043
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3
.end method
