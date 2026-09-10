.class Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;
.super Ljava/lang/Object;
.source "ButtonsPostDisplayItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;->getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;->this$0:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;

    iput-object p2, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;->val$context:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;)Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;->this$0:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 66
    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 67
    const v1, 0x7f08004e

    new-instance v2, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2$1;

    iget-object v3, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;->val$context:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2$1;-><init>(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 73
    const v1, 0x7f08004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 75
    return-void
.end method
