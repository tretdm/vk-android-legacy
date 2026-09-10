.class Lcom/vkontakte/android/fragments/AudioListFragment$1$1$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment$1$1;->onImageLoaded(Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/fragments/AudioListFragment$1$1;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment$1$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1$1$1;->this$2:Lcom/vkontakte/android/fragments/AudioListFragment$1$1;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1$1$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1$1$1;->this$2:Lcom/vkontakte/android/fragments/AudioListFragment$1$1;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/AudioListFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$1;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$200(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 137
    .local v0, "sw":Landroid/widget/ViewFlipper;
    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$1$1$1$1;

    invoke-direct {v1, p0, v0}, Lcom/vkontakte/android/fragments/AudioListFragment$1$1$1$1;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment$1$1$1;Landroid/widget/ViewFlipper;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    return-void
.end method
