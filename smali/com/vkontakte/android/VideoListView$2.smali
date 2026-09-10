.class Lcom/vkontakte/android/VideoListView$2;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/VideoListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$2;->this$0:Lcom/vkontakte/android/VideoListView;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f060074

    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$2;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$3(Lcom/vkontakte/android/VideoListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$2;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$3(Lcom/vkontakte/android/VideoListView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$2;->this$0:Lcom/vkontakte/android/VideoListView;

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$2;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$3(Lcom/vkontakte/android/VideoListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/vkontakte/android/VideoListView;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$2;->this$0:Lcom/vkontakte/android/VideoListView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/vkontakte/android/VideoListView;->access$4(Lcom/vkontakte/android/VideoListView;Ljava/lang/String;)V

    .line 132
    return-void
.end method
