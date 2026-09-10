.class final Lcom/vkontakte/android/Attachment$1;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallGetById$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$post:[Lcom/vkontakte/android/NewsEntry;


# direct methods
.method constructor <init>([Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/vkontakte/android/Attachment$1;->val$post:[Lcom/vkontakte/android/NewsEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 187
    return-void
.end method

.method public success([Lcom/vkontakte/android/NewsEntry;)V
    .locals 3
    .param p1, "news"    # [Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/vkontakte/android/Attachment$1;->val$post:[Lcom/vkontakte/android/NewsEntry;

    aget-object v1, p1, v2

    aput-object v1, v0, v2

    .line 182
    return-void
.end method
