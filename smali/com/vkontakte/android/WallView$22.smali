.class Lcom/vkontakte/android/WallView$22;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallView$22;->this$0:Lcom/vkontakte/android/WallView;

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v3, 0x7f06010c

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 1076
    new-instance v1, Lcom/vkontakte/android/ImageLoader;

    invoke-direct {v1}, Lcom/vkontakte/android/ImageLoader;-><init>()V

    .line 1077
    .local v1, "ldr":Lcom/vkontakte/android/ImageLoader;
    iget-object v2, p0, Lcom/vkontakte/android/WallView$22;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$7(Lcom/vkontakte/android/WallView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1078
    iget-object v2, p0, Lcom/vkontakte/android/WallView$22;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$19(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 1079
    iget-object v2, p0, Lcom/vkontakte/android/WallView$22;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$20(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 1081
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/WallView$22;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$25(Lcom/vkontakte/android/WallView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1082
    iget-object v2, p0, Lcom/vkontakte/android/WallView$22;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$25(Lcom/vkontakte/android/WallView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1087
    :cond_1
    invoke-virtual {v1}, Lcom/vkontakte/android/ImageLoader;->start()V

    .line 1088
    return-void

    .line 1082
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1083
    .local v0, "iv":Landroid/widget/ImageView;
    const v3, 0x7f0201e9

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1084
    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    goto :goto_0
.end method
