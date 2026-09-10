.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$5;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$5;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$5;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/Photo;->albumID:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$5;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$11(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    goto :goto_0
.end method
