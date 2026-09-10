.class Lcom/vkontakte/android/AudioListActivity$20;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity;->showListSelectDialog([I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioListActivity;

.field private final synthetic val$ids:[I

.field private final synthetic val$titles:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity;[I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$20;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iput-object p2, p0, Lcom/vkontakte/android/AudioListActivity$20;->val$ids:[I

    iput-object p3, p0, Lcom/vkontakte/android/AudioListActivity$20;->val$titles:[Ljava/lang/String;

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 796
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$20;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$20;->val$ids:[I

    aget v2, v0, p2

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$20;->val$titles:[Ljava/lang/String;

    aget-object v0, v0, p2

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/vkontakte/android/AudioListActivity;->loadList(ILjava/lang/String;IZ)V

    .line 797
    return-void

    .line 796
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
