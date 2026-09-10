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
    .line 86
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v9, 0x7f08018e

    const/4 v8, 0x0

    .line 89
    const-string v6, "com.vkontakte.android.STICKERS_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 90
    iget-object v6, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v6}, Lcom/vkontakte/android/StoreActivity;->access$000(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/data/StickerPack;

    .line 91
    .local v4, "pck":Lcom/vkontakte/android/data/StickerPack;
    iget v6, v4, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v6}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v6

    iput v6, v4, Lcom/vkontakte/android/data/StickerPack;->state:I

    goto :goto_0

    .line 93
    .end local v4    # "pck":Lcom/vkontakte/android/data/StickerPack;
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v6}, Lcom/vkontakte/android/StoreActivity;->access$200(Lcom/vkontakte/android/StoreActivity;)V

    .line 95
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v6, "com.vkontakte.android.STICKERS_DOWNLOAD_PROGRESS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 96
    const-string v6, "id"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 97
    .local v2, "id":I
    const-string v6, "progress"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    .line 98
    .local v5, "progress":F
    const/4 v0, 0x0

    .line 99
    .local v0, "i":I
    iget-object v6, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v6}, Lcom/vkontakte/android/StoreActivity;->access$000(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/data/StickerPack;

    .line 100
    .restart local v4    # "pck":Lcom/vkontakte/android/data/StickerPack;
    iget v6, v4, Lcom/vkontakte/android/data/StickerPack;->id:I

    if-ne v6, v2, :cond_2

    .line 101
    iget-object v6, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v6}, Lcom/vkontakte/android/StoreActivity;->access$300(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    if-lt v0, v6, :cond_2

    iget-object v6, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v6}, Lcom/vkontakte/android/StoreActivity;->access$300(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v6

    if-gt v0, v6, :cond_2

    .line 102
    iget-object v6, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v6}, Lcom/vkontakte/android/StoreActivity;->access$300(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/StoreActivity$2;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v7}, Lcom/vkontakte/android/StoreActivity;->access$300(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v0, v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 103
    .local v3, "item":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 104
    const v6, 0x7f08018d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 108
    .end local v3    # "item":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":I
    .end local v4    # "pck":Lcom/vkontakte/android/data/StickerPack;
    .end local v5    # "progress":F
    :cond_3
    return-void
.end method
