.class Lcom/vkontakte/android/WikiViewActivity$WebCallback;
.super Ljava/lang/Object;
.source "WikiViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/WikiViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WikiViewActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/WikiViewActivity;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/WikiViewActivity$WebCallback;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/vkontakte/android/WikiViewActivity$WebCallback;-><init>(Lcom/vkontakte/android/WikiViewActivity;)V

    return-void
.end method


# virtual methods
.method public playAudio(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "duration"    # I

    .prologue
    .line 263
    new-instance v0, Lcom/vkontakte/android/AudioFile;

    move v1, p2

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    new-instance v7, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v1, "file"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-virtual {v1, v7}, Lcom/vkontakte/android/WikiViewActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 268
    new-instance v8, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const-class v2, Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .local v8, "intent2":Landroid/content/Intent;
    const-string v1, "file"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity$WebCallback;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-virtual {v1, v8}, Lcom/vkontakte/android/WikiViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    return-void
.end method
