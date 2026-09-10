.class Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
.super Ljava/lang/Object;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItem"
.end annotation


# static fields
.field static final TYPE_BOTTOM:I = 0x4

.field static final TYPE_FULL:I = 0x1

.field static final TYPE_MIDDLE:I = 0x3

.field static final TYPE_SERVICE:I = 0x5

.field static final TYPE_TOP:I = 0x2


# instance fields
.field attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field fwdLevel:I

.field fwdName:Ljava/lang/String;

.field fwdTime:I

.field fwdUid:I

.field hasLinks:Z

.field images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/fragments/ChatFragment$Image;",
            ">;"
        }
    .end annotation
.end field

.field isFailed:Z

.field isOut:Z

.field msgId:I

.field readState:Z

.field text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;

.field time:I

.field type:I


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 2054
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$ListItem;)V
    .locals 0

    .prologue
    .line 2054
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    return-void
.end method
