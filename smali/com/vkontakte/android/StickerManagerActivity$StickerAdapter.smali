.class Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "StickerManagerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ReorderableListView$Swappable;
.implements Lcom/vkontakte/android/ui/ReorderableListView$DraggableChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/StickerManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StickerManagerActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/StickerManagerActivity;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/StickerManagerActivity;Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;-><init>(Lcom/vkontakte/android/StickerManagerActivity;)V

    return-void
.end method


# virtual methods
.method public canDragItem(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 350
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 351
    .local v0, "p":[I
    aget v3, v0, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    aget v3, v0, v2

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public canDragToPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 357
    if-nez p1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v1

    .line 358
    :cond_1
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 359
    .local v0, "p":[I
    aget v2, v0, v1

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 313
    packed-switch p1, :pswitch_data_0

    .line 319
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 315
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$3(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemId(II)J
    .locals 3
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 324
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/StickerPack;

    .line 325
    .local v0, "pack":Lcom/vkontakte/android/data/StickerPack;
    iget v1, v0, Lcom/vkontakte/android/data/StickerPack;->id:I

    int-to-long v1, v1

    return-wide v1

    .line 324
    .end local v0    # "pack":Lcom/vkontakte/android/data/StickerPack;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$3(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x2

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 297
    packed-switch p1, :pswitch_data_0

    .line 303
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 299
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    const v1, 0x7f08033d

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/StickerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    const v1, 0x7f08033e

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/StickerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0900c1

    const v5, 0x7f090108

    .line 276
    move-object v1, p3

    .line 277
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 278
    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    const v3, 0x7f03005d

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 279
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StickerManagerActivity;->access$2(Lcom/vkontakte/android/StickerManagerActivity;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const v3, 0x7f02017a

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    :goto_1
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/StickerPack;

    .line 285
    .local v0, "pack":Lcom/vkontakte/android/data/StickerPack;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 286
    const v2, 0x7f0900c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$4(Lcom/vkontakte/android/StickerManagerActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/data/StickerPack;->thumb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StickerManagerActivity;->access$4(Lcom/vkontakte/android/StickerManagerActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/data/StickerPack;->thumb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 292
    :goto_2
    return-object v1

    .line 282
    .end local v0    # "pack":Lcom/vkontakte/android/data/StickerPack;
    :cond_1
    const v3, 0x7f020179

    goto :goto_0

    .line 284
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$3(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    .line 290
    .restart local v0    # "pack":Lcom/vkontakte/android/data/StickerPack;
    :cond_3
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020261

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 3
    .param p1, "section"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 330
    packed-switch p1, :pswitch_data_0

    .line 336
    :cond_0
    :goto_0
    return v0

    .line 332
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 334
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$3(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public swapItems(II)V
    .locals 3
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    const/4 v2, 0x1

    .line 341
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->resolveIndex(I)[I

    move-result-object v1

    aget p1, v1, v2

    .line 342
    invoke-virtual {p0, p2}, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->resolveIndex(I)[I

    move-result-object v1

    aget p2, v1, v2

    .line 343
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/StickerPack;

    .line 344
    .local v0, "tmp":Lcom/vkontakte/android/data/StickerPack;
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/StickerPack;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 346
    return-void
.end method
