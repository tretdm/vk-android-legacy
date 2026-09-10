.class Lcom/vkontakte/android/NewsView$2$1;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewsView$2;

.field private final synthetic val$sid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView$2;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$2$1;->this$1:Lcom/vkontakte/android/NewsView$2;

    iput p2, p0, Lcom/vkontakte/android/NewsView$2$1;->val$sid:I

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView$2$1;)Lcom/vkontakte/android/NewsView$2;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$2$1;->this$1:Lcom/vkontakte/android/NewsView$2;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 145
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedAddBan;

    iget v1, p0, Lcom/vkontakte/android/NewsView$2$1;->val$sid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/NewsfeedAddBan;-><init>(I)V

    .line 146
    new-instance v1, Lcom/vkontakte/android/NewsView$2$1$1;

    iget v2, p0, Lcom/vkontakte/android/NewsView$2$1;->val$sid:I

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/NewsView$2$1$1;-><init>(Lcom/vkontakte/android/NewsView$2$1;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedAddBan;->setCallback(Lcom/vkontakte/android/api/NewsfeedAddBan$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$2$1;->this$1:Lcom/vkontakte/android/NewsView$2;

    invoke-static {v1}, Lcom/vkontakte/android/NewsView$2;->access$0(Lcom/vkontakte/android/NewsView$2;)Lcom/vkontakte/android/NewsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$2$1;->this$1:Lcom/vkontakte/android/NewsView$2;

    invoke-static {v1}, Lcom/vkontakte/android/NewsView$2;->access$0(Lcom/vkontakte/android/NewsView$2;)Lcom/vkontakte/android/NewsView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 167
    return-void
.end method
