.class Lcom/vkontakte/android/NewsView$27;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->performPostAction(Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;

.field private final synthetic val$e:Lcom/vkontakte/android/NewsEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$27;->this$0:Lcom/vkontakte/android/NewsView;

    iput-object p2, p0, Lcom/vkontakte/android/NewsView$27;->val$e:Lcom/vkontakte/android/NewsEntry;

    .line 1390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$27;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$27;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsView;->access$18(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V

    .line 1394
    return-void
.end method
