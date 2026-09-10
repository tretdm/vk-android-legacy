.class Lcom/vkontakte/android/StoreActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "StoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/StoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StoreActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    .line 89
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v9, 0x7f0901ae

    const/4 v8, 0x0

    .line 92
    const-string v5, "com.vkontakte.android.STICKERS_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    iget-object v5, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v5}, Lcom/vkontakte/android/StoreActivity;->access$0(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 96
    iget-object v5, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v5}, Lcom/vkontakte/android/StoreActivity;->access$2(Lcom/vkontakte/android/StoreActivity;)V

    .line 98
    :cond_0
    const-string v5, "com.vkontakte.android.STICKERS_DOWNLOAD_PROGRESS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    const-string v5, "id"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 100
    .local v1, "id":I
    const-string v5, "progress"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    .line 101
    .local v4, "progress":F
    const/4 v0, 0x0

    .line 102
    .local v0, "i":I
    iget-object v5, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v5}, Lcom/vkontakte/android/StoreActivity;->access$0(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 114
    .end local v0    # "i":I
    .end local v1    # "id":I
    .end local v4    # "progress":F
    :cond_1
    return-void

    .line 93
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/data/StickerPack;

    .line 94
    .local v3, "pck":Lcom/vkontakte/android/data/StickerPack;
    iget v6, v3, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v6}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v6

    iput v6, v3, Lcom/vkontakte/android/data/StickerPack;->state:I

    goto :goto_0

    .line 102
    .end local v3    # "pck":Lcom/vkontakte/android/data/StickerPack;
    .restart local v0    # "i":I
    .restart local v1    # "id":I
    .restart local v4    # "progress":F
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/data/StickerPack;

    .line 103
    .restart local v3    # "pck":Lcom/vkontakte/android/data/StickerPack;
    iget v5, v3, Lcom/vkontakte/android/data/StickerPack;->id:I

    if-ne v5, v1, :cond_4

    .line 104
    iget-object v5, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v5}, Lcom/vkontakte/android/StoreActivity;->access$3(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    if-lt v0, v5, :cond_4

    iget-object v5, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v5}, Lcom/vkontakte/android/StoreActivity;->access$3(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    if-gt v0, v5, :cond_4

    .line 105
    iget-object v5, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v5}, Lcom/vkontakte/android/StoreActivity;->access$3(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v5

    iget-object v7, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v7}, Lcom/vkontakte/android/StoreActivity;->access$3(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v0, v7

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 106
    .local v2, "item":Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 107
    const v5, 0x7f0901ad

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 108
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 111
    .end local v2    # "item":Landroid/view/View;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
