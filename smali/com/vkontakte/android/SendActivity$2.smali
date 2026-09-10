.class Lcom/vkontakte/android/SendActivity$2;
.super Ljava/lang/Object;
.source "SendActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SendActivity;->showVideoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SendActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SendActivity;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/vkontakte/android/SendActivity$2;->this$0:Lcom/vkontakte/android/SendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/SendActivity$2;->this$0:Lcom/vkontakte/android/SendActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/SendActivity;->finish()V

    .line 200
    return-void
.end method
