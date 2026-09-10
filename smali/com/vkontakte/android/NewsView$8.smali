.class Lcom/vkontakte/android/NewsView$8;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$8;->this$0:Lcom/vkontakte/android/NewsView;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$8;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$8;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$8;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 350
    return-void
.end method
