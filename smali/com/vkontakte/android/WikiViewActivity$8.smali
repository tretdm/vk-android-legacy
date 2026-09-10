.class Lcom/vkontakte/android/WikiViewActivity$8;
.super Ljava/lang/Object;
.source "WikiViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WikiViewActivity;->showError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WikiViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WikiViewActivity;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/vkontakte/android/WikiViewActivity$8;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$8;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WikiViewActivity;->access$800(Lcom/vkontakte/android/WikiViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$8;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/WikiViewActivity;->onBackPressed()V

    .line 271
    :cond_0
    return-void
.end method
