.class Lcom/vkontakte/android/WallView$18;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->displayPhotos([Lcom/vkontakte/android/Photo;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/WallView$18;->this$0:Lcom/vkontakte/android/WallView;

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 887
    iget-object v2, p0, Lcom/vkontakte/android/WallView$18;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/WallActivity;

    if-eqz v2, :cond_0

    .line 888
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 889
    .local v1, "idx":I
    iget-object v2, p0, Lcom/vkontakte/android/WallView$18;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$17(Lcom/vkontakte/android/WallView;)[Lcom/vkontakte/android/Photo;

    move-result-object v2

    aget-object v2, v2, v1

    iget v0, v2, Lcom/vkontakte/android/Photo;->id:I

    .line 890
    .local v0, "id":I
    iget-object v2, p0, Lcom/vkontakte/android/WallView$18;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/WallActivity;

    iget-object v3, p0, Lcom/vkontakte/android/WallView$18;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$17(Lcom/vkontakte/android/WallView;)[Lcom/vkontakte/android/Photo;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/WallView$18;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$18(Lcom/vkontakte/android/WallView;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v2, v0, v3, v4}, Lcom/vkontakte/android/WallActivity;->onOpenPhoto(I[Lcom/vkontakte/android/Photo;I)V

    .line 892
    .end local v0    # "id":I
    .end local v1    # "idx":I
    :cond_0
    return-void
.end method
