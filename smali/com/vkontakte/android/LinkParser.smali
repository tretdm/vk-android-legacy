.class public Lcom/vkontakte/android/LinkParser;
.super Ljava/lang/Object;
.source "LinkParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/LinkParser$CharRange;
    }
.end annotation


# static fields
.field public static final HASHTAGS:I = 0x4

.field private static final HASHTAGS_PATTERN:Ljava/util/regex/Pattern;

.field private static final MENTIONS_PATTERN:Ljava/util/regex/Pattern;

.field public static final URLS:I = 0x1

.field private static final URL_PATTERN:Ljava/util/regex/Pattern;

.field public static final VK_MENTIONS:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-string v0, "(?:http(?:s)?:\\/\\/)?(?:[a-z\u0430-\u044f0-9_-]+\\.)+(?:[a-z][a-z0-9-]{1,20}|\u0440\u0444)(?:\\/[a-z0-9\u0430-\u044f_z%~:\\.,-]*)*(?:[\\?&#][a-z0-9\\[\\]_]*(?:=[a-z0-9~\\._=,%\\|-]*))*(?<![\\.,:-])"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/LinkParser;->URL_PATTERN:Ljava/util/regex/Pattern;

    .line 20
    const-string v0, "\\[((?:id|club)[0-9]+)\\|([^\\]]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/LinkParser;->MENTIONS_PATTERN:Ljava/util/regex/Pattern;

    .line 21
    const-string v0, "(#[a-zA-Z\u0430-\u044f\u0410-\u042f\u0451\u0401\u0454\u0404\u0490\u0491\u0407\u0457\u0406\u0456\u0408\u0458\u040e\u045e_\\d]*[a-zA-Z\u0430-\u044f\u0410-\u042f\u0451\u0401\u0456\u0458\u0457\u0454\u0491\u0406\u0408\u0404\u0407\u0490\u040e\u045e][a-zA-Z\u0430-\u044f\u0410-\u042f\u0451\u0401\u0456\u0458\u0457\u0454\u0491\u0406\u0408\u0404\u0407\u0490\u040e\u045e_\\d]+|#[a-zA-Z\u0430-\u044f\u0410-\u042f\u0451\u0401\u0456\u0458\u0457\u0454\u0491\u0406\u0408\u0404\u0407\u0490\u040e\u045e_\\d]+[a-zA-Z\u0430-\u044f\u0410-\u042f\u0451\u0401\u0456\u0458\u0457\u0454\u0491\u0406\u0408\u0404\u0407\u0490\u040e\u045e][a-zA-Z\u0430-\u044f\u0410-\u042f\u0451\u0401\u0456\u0458\u0457\u0454\u0491\u0406\u0408\u0404\u0407\u0490\u040e\u045e_\\d]*)(?:@([a-zA-Z0-9\\._]{2,}))?(?<![\\.,:-])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/LinkParser;->HASHTAGS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method public static parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "in"    # Ljava/lang/CharSequence;

    .prologue
    .line 106
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static parseLinks(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 13
    .param p0, "in"    # Ljava/lang/CharSequence;
    .param p1, "flags"    # I

    .prologue
    .line 32
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v9, "usedRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/LinkParser$CharRange;>;"
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 34
    .local v6, "result":Landroid/text/SpannableStringBuilder;
    and-int/lit8 v10, p1, 0x1

    if-lez v10, :cond_0

    .line 35
    sget-object v10, Lcom/vkontakte/android/LinkParser;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 36
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 37
    new-instance v8, Lcom/vkontakte/android/LinkSpan;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/vkontakte/android/LinkSpan;-><init>(Ljava/lang/String;)V

    .line 38
    .local v8, "span":Lcom/vkontakte/android/LinkSpan;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v8, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 39
    new-instance v10, Lcom/vkontakte/android/LinkParser$CharRange;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-direct {v10, v11, v12}, Lcom/vkontakte/android/LinkParser$CharRange;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "span":Lcom/vkontakte/android/LinkSpan;
    :cond_0
    and-int/lit8 v10, p1, 0x4

    if-lez v10, :cond_7

    .line 43
    sget-object v10, Lcom/vkontakte/android/LinkParser;->HASHTAGS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 44
    .restart local v3    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 46
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 47
    .local v7, "s":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 48
    .local v0, "e":I
    const/4 v2, 0x0

    .line 49
    .local v2, "intersects":Z
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/LinkParser$CharRange;

    .line 50
    .local v5, "r":Lcom/vkontakte/android/LinkParser$CharRange;
    iget v10, v5, Lcom/vkontakte/android/LinkParser$CharRange;->start:I

    if-lt v7, v10, :cond_3

    iget v10, v5, Lcom/vkontakte/android/LinkParser$CharRange;->end:I

    if-le v7, v10, :cond_4

    :cond_3
    iget v10, v5, Lcom/vkontakte/android/LinkParser$CharRange;->start:I

    if-lt v0, v10, :cond_2

    iget v10, v5, Lcom/vkontakte/android/LinkParser$CharRange;->end:I

    if-gt v0, v10, :cond_2

    .line 51
    :cond_4
    const/4 v2, 0x1

    .line 55
    .end local v5    # "r":Lcom/vkontakte/android/LinkParser$CharRange;
    :cond_5
    if-nez v2, :cond_1

    .line 56
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    .line 57
    new-instance v8, Lcom/vkontakte/android/LinkSpan;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "vkontakte://search/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/vkontakte/android/LinkSpan;-><init>(Ljava/lang/String;)V

    .line 58
    .restart local v8    # "span":Lcom/vkontakte/android/LinkSpan;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v8, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 60
    .end local v8    # "span":Lcom/vkontakte/android/LinkSpan;
    :cond_6
    new-instance v8, Lcom/vkontakte/android/LinkSpan;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "vkontakte://vk.com/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/vkontakte/android/LinkSpan;-><init>(Ljava/lang/String;)V

    .line 61
    .restart local v8    # "span":Lcom/vkontakte/android/LinkSpan;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v8, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 65
    .end local v0    # "e":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intersects":Z
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "s":I
    .end local v8    # "span":Lcom/vkontakte/android/LinkSpan;
    :cond_7
    and-int/lit8 v10, p1, 0x2

    if-lez v10, :cond_8

    .line 66
    sget-object v10, Lcom/vkontakte/android/LinkParser;->MENTIONS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 67
    .restart local v3    # "matcher":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    .line 68
    .local v4, "offset":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 69
    new-instance v8, Lcom/vkontakte/android/LinkSpan;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "vkontakte://vk.com/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/vkontakte/android/LinkSpan;-><init>(Ljava/lang/String;)V

    .line 70
    .restart local v8    # "span":Lcom/vkontakte/android/LinkSpan;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    sub-int/2addr v10, v4

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    sub-int/2addr v11, v4

    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 71
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    sub-int/2addr v10, v4

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    sub-int/2addr v11, v4

    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {v6, v8, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 72
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 73
    goto :goto_2

    .line 75
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "offset":I
    .end local v8    # "span":Lcom/vkontakte/android/LinkSpan;
    :cond_8
    return-object v6
.end method

.method public static truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 13
    .param p0, "in"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v12, 0x118

    const/4 v11, 0x6

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 79
    const/4 v6, -0x1

    .line 80
    .local v6, "truncateAt":I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-le v7, v11, :cond_1

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v11, :cond_0

    .line 84
    const/16 v7, 0xa

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    move v6, v1

    .line 88
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v12, :cond_2

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/16 v8, 0x12c

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 90
    if-ne v6, v9, :cond_2

    .line 91
    const/16 v6, 0x118

    .line 93
    :cond_2
    if-ne v6, v9, :cond_3

    .line 102
    .end local p0    # "in":Ljava/lang/CharSequence;
    :goto_1
    return-object p0

    .line 95
    .restart local p0    # "in":Ljava/lang/CharSequence;
    :cond_3
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 96
    .local v4, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4, p0, v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 97
    const-string v7, "...\n"

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 98
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v7

    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0210

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    .line 99
    .local v2, "showMore":Landroid/text/Spannable;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-direct {v3, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 100
    .local v3, "span":Landroid/text/style/ForegroundColorSpan;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v7

    invoke-interface {v2, v3, v10, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 101
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object p0, v4

    .line 102
    goto :goto_1
.end method
