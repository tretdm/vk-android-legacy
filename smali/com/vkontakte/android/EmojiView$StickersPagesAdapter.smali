.class Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickersPagesAdapter"
.end annotation


# instance fields
.field private reusableViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vkontakte/android/EmojiView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/EmojiView;)V
    .locals 1

    .prologue
    .line 921
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->reusableViews:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/EmojiView;Lcom/vkontakte/android/EmojiView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/EmojiView;
    .param p2, "x1"    # Lcom/vkontakte/android/EmojiView$1;

    .prologue
    .line 921
    invoke-direct {p0, p1}, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;-><init>(Lcom/vkontakte/android/EmojiView;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 986
    move-object v0, p3

    check-cast v0, Landroid/widget/LinearLayout;

    .line 987
    .local v0, "view":Landroid/widget/LinearLayout;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 988
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->reusableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 925
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$700(Lcom/vkontakte/android/EmojiView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 926
    const/4 v0, 0x0

    .line 927
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$700(Lcom/vkontakte/android/EmojiView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v1}, Lcom/vkontakte/android/EmojiView;->access$2500(Lcom/vkontakte/android/EmojiView;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView;->access$2600(Lcom/vkontakte/android/EmojiView;)I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 12
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 937
    iget-object v8, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->reusableViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 938
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v8}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 939
    .local v7, "view":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 940
    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 941
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v8, 0x2

    if-ge v0, v8, :cond_2

    .line 942
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v8}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 943
    .local v6, "row":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 944
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 945
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    const/4 v8, 0x6

    if-ge v4, v8, :cond_0

    .line 946
    new-instance v3, Lcom/vkontakte/android/ui/StickerImageView;

    iget-object v8, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v8}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/vkontakte/android/ui/StickerImageView;-><init>(Landroid/content/Context;)V

    .line 947
    .local v3, "iv":Landroid/widget/ImageView;
    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    .line 948
    .local v5, "pad":I
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 949
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 945
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 941
    .end local v3    # "iv":Landroid/widget/ImageView;
    .end local v5    # "pad":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 953
    .end local v0    # "i":I
    .end local v4    # "j":I
    .end local v6    # "row":Landroid/widget/LinearLayout;
    .end local v7    # "view":Landroid/widget/LinearLayout;
    :cond_1
    iget-object v8, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->reusableViews:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 956
    .restart local v7    # "view":Landroid/widget/LinearLayout;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .local v1, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    const/4 v8, 0x2

    if-ge v0, v8, :cond_9

    .line 958
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 959
    .restart local v6    # "row":Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v8}, Lcom/vkontakte/android/EmojiView;->access$2600(Lcom/vkontakte/android/EmojiView;)I

    move-result v8

    if-ge v0, v8, :cond_4

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 960
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 961
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_8

    .line 962
    iget-object v8, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v8}, Lcom/vkontakte/android/EmojiView;->access$2500(Lcom/vkontakte/android/EmojiView;)I

    move-result v8

    mul-int/2addr v8, p2

    iget-object v9, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v9}, Lcom/vkontakte/android/EmojiView;->access$2600(Lcom/vkontakte/android/EmojiView;)I

    move-result v9

    mul-int/2addr v8, v9

    iget-object v9, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v9}, Lcom/vkontakte/android/EmojiView;->access$2500(Lcom/vkontakte/android/EmojiView;)I

    move-result v9

    mul-int/2addr v9, v0

    add-int/2addr v8, v9

    add-int v2, v8, v4

    .line 963
    .local v2, "index":I
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v8, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v8}, Lcom/vkontakte/android/EmojiView;->access$2500(Lcom/vkontakte/android/EmojiView;)I

    move-result v8

    if-ge v4, v8, :cond_6

    iget-object v8, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v8}, Lcom/vkontakte/android/EmojiView;->access$700(Lcom/vkontakte/android/EmojiView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 964
    iget-object v8, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v8}, Lcom/vkontakte/android/EmojiView;->access$2500(Lcom/vkontakte/android/EmojiView;)I

    move-result v8

    if-ge v4, v8, :cond_3

    iget-object v8, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v8}, Lcom/vkontakte/android/EmojiView;->access$700(Lcom/vkontakte/android/EmojiView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 965
    iget-object v8, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v8}, Lcom/vkontakte/android/EmojiView;->access$700(Lcom/vkontakte/android/EmojiView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/StickerAttachment;

    invoke-virtual {v8}, Lcom/vkontakte/android/StickerAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/vkontakte/android/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 966
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v9}, Lcom/vkontakte/android/EmojiView;->access$700(Lcom/vkontakte/android/EmojiView;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/StickerAttachment;

    invoke-virtual {v9}, Lcom/vkontakte/android/StickerAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/vkontakte/android/ImageCache;->getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 972
    :goto_6
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v10}, Lcom/vkontakte/android/EmojiView;->access$1900(Lcom/vkontakte/android/EmojiView;)I

    move-result v10

    iget-object v11, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v11}, Lcom/vkontakte/android/EmojiView;->access$1900(Lcom/vkontakte/android/EmojiView;)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 973
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 974
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v9}, Lcom/vkontakte/android/EmojiView;->access$2700(Lcom/vkontakte/android/EmojiView;)Landroid/view/View$OnClickListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 961
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 959
    .end local v2    # "index":I
    .end local v4    # "j":I
    :cond_4
    const/16 v8, 0x8

    goto/16 :goto_3

    .line 963
    .restart local v2    # "index":I
    .restart local v4    # "j":I
    :cond_5
    const/4 v8, 0x4

    goto/16 :goto_5

    :cond_6
    const/16 v8, 0x8

    goto/16 :goto_5

    .line 969
    :cond_7
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 970
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 957
    .end local v2    # "index":I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 979
    .end local v4    # "j":I
    .end local v6    # "row":Landroid/widget/LinearLayout;
    :cond_9
    iget-object v8, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    iget-object v9, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v9}, Lcom/vkontakte/android/EmojiView;->access$2500(Lcom/vkontakte/android/EmojiView;)I

    move-result v9

    mul-int/2addr v9, p2

    iget-object v10, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v10}, Lcom/vkontakte/android/EmojiView;->access$2600(Lcom/vkontakte/android/EmojiView;)I

    move-result v10

    mul-int/2addr v9, v10

    iget-object v10, p0, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v10}, Lcom/vkontakte/android/EmojiView;->access$1500(Lcom/vkontakte/android/EmojiView;)I

    move-result v10

    invoke-static {v8, v1, v9, v10}, Lcom/vkontakte/android/EmojiView;->access$2800(Lcom/vkontakte/android/EmojiView;Ljava/util/List;II)V

    .line 981
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 982
    return-object v7
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 932
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
